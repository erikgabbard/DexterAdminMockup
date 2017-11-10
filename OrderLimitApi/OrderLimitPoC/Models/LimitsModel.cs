using System;

namespace OrderLimitPoC.Models
{
    public class LimitsModel
    {
        public int CostCenterId { get; set; }

        public int Limit { get; set; }

        public int OnOrder { get; set; }

        public DateTime LastOrder { get; set; }

        public int InCart { get; set; }

        public string CartOwner { get; set; }

        public object MarshaCode { get; set; }
    }
}