// The file contents for the current environment will overwrite these during build.
// The build system defaults to the dev environment which uses `environment.ts`, but if you do
// `ng build --env=prod` then `environment.prod.ts` will be used instead.
// The list of which env maps to which file can be found in `.angular-cli.json`.

export const environment = {
  production: false,
  limitsApiEndpoint: "http://localhost:52363/OrderLimitApi",
  firebaseConfig: {
    apiKey: "AIzaSyCF6ZZ6E6vw1n7E4sH0szjUTm9LXve3XVE",
    authDomain: "dexter-admin-poc.firebaseapp.com",
    databaseURL: "https://dexter-admin-poc.firebaseio.com",
    projectId: "dexter-admin-poc",
    storageBucket: "dexter-admin-poc.appspot.com",
    messagingSenderId: "483273449091"
  },
  host: "http://localhost:4200"
};
