function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'qa';
  }
  var config = {
    // initialize api url
    apiUrl: 'http://localhost:8080/v1/'
  }
  if (env == 'qa') {
    config.apiUrl = "http://localhost:8080/v1/";
  }
  else if (env == 'dev') {
    //In case we have another environment
    config.apiUrl = "http://localhost:8080/v1/dev/";
  }
  return config;
}