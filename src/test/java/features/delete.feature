Feature: Delete employees in dummy api example
  Background:
    * url baseURL
    * path "api/v1/delete/"
    * def response_post = karate.callSingle("post.feature@successful")
    * def id = response_post.response.data.id
    * def jsonBody200 = read("classpath:../json_filles/delete/response_delete_employee.json")


    Scenario: Deleted employee that was created
      Given path id
      When method delete
      Then status 200
      And match response == jsonBody200


