Feature: Get employees on dummy api example

  Background:
    * url baseURL
    * def jsonBody200 =  read("classpath:../json_filles/get/response_get_employees_dynamic.json")
    * def jsonBody404 =  read("classpath:../json_filles/get/response_error_get.json")
    * print jsonBody200

    Scenario Outline: Get users list
      Given path "api/v1" + "/employees<id>"
      When method get
      * def jsonResponse = response
      * print jsonResponse
      Then assert responseStatus == <status> || responseStatus == 429
      And match <jsonMatch> != response && responseStatus == 429 || response == <jsonMatch>

      Examples:
        |id|status|jsonMatch   |
        |  | 200  |jsonBody200|
        |2 | 404  |jsonBody404|


