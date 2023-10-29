function fn(){

var config = {
        baseURL : "https://dummy.restapiexample.com/"
        }
var env = karate.env
karate.log('Env is: ', env)

karate.configure('connectTimeout', 5000);
karate.configure('readTimeout',5000);
return config;
}