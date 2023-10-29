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
      Then status <status>
      And match jsonResponse == <jsonBody>

      Examples:
        |id|status|jsonBody   |
        |  | 200  |jsonBody200|
        |2 | 404  |jsonBody404|


