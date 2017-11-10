using OrderLimitPoC.Models;
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Http;
using System.Data;
using System.Web.Http.Cors;

namespace OrderLimitPoC.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class LimitsController : ApiController
    {
        public string ConnectionString { get; set; } = ConfigurationManager.ConnectionStrings["CardExpressDb"].ConnectionString;

        [HttpGet]
        [Route("OrderLimitApi/GetLimitInfo/{marshaCode}")]
        public IHttpActionResult GetLimitInfo(string marshaCode)
        {
            LimitsModel limitInfo = null;
            
            try
            {
                using (var sqlConnection = new SqlConnection(ConnectionString))
                {
                    sqlConnection.Open();

                    using (var sqlCommand = new SqlCommand())
                    {
                        sqlCommand.Connection = sqlConnection;
                        sqlCommand.CommandType = CommandType.StoredProcedure;
                        sqlCommand.CommandText = ConfigurationManager.AppSettings["GetLimitStoredProc"];
                        sqlCommand.Parameters.AddWithValue("MARSHA", marshaCode);

                        using (var reader = sqlCommand.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                limitInfo = new LimitsModel()
                                {
                                    MarshaCode = marshaCode,
                                    CostCenterId = Convert.ToInt32(reader["Cost_center_id"]),
                                    Limit = Convert.ToInt32(reader["limit"]),
                                    LastOrder = DateTime.Parse(reader["last_order"].ToString()),
                                    OnOrder = Convert.ToInt32(reader["on_order"]),
                                    InCart = Convert.ToInt32(reader["in_cart"]),
                                    CartOwner = reader["cart_owner"].ToString()
                                };
                            }
                            reader.Close();
                        }
                    }

                    sqlConnection.Close();
                }
            }
            catch (SqlException sqlEx)
            {
                return InternalServerError(sqlEx);
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }

            if (limitInfo == null)
            {
                return NotFound();
            }

            return Ok(limitInfo);
        }

        [HttpPost]
        [Route("OrderLimitApi/SetLimit")]
        public IHttpActionResult SetLimit([FromBody] LimitsModel model)
        {
            try
            {
                using (var sqlConnection = new SqlConnection(ConnectionString))
                {
                    sqlConnection.Open();

                    using (var sqlCommand = new SqlCommand())
                    {
                        sqlCommand.Connection = sqlConnection;
                        sqlCommand.CommandType = CommandType.StoredProcedure;
                        sqlCommand.CommandText = ConfigurationManager.AppSettings["UpdateLimitStoredProc"];
                        sqlCommand.Parameters.AddWithValue("MARSHA", model.MarshaCode);
                        sqlCommand.Parameters.AddWithValue("limit", model.Limit);

                        sqlCommand.ExecuteNonQuery();
                    }

                    sqlConnection.Close();
                }
            }
            catch (SqlException sqlEx)
            {
                return InternalServerError(sqlEx);
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }

            return Ok();
        }
    }
}
