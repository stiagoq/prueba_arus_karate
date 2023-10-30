Feature: Delete employees in dummy api example
  Background:
    * url baseURL
    * path "api/v1/delete/"
    * def response_post = karate.callSingle("post.feature@successful")
    * def jsonBody200 = read("classpath:../json_filles/delete/response_delete_employee.json")


    Scenario Outline:
      Given path <id>
      When method delete
      Then assert responseStatus == <status> || responseStatus == 429
      And match jsonBody200 != response && responseStatus == 429 || response == jsonBody200 || responseStatus == 405

      Examples:
        |id                             |status |
        |response_post.response.data.id |200    |
        |"D*"                           |405    |


