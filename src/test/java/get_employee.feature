Feature: Get info an employee in dummy api example

  Background:
    * url baseURL
    * path "api/v1/employee/"
    * def jsonBody200 = read("classpath:../json_filles/get/response_get_an_employee.json")
    * def jsonBody404 = read("classpath:../json_filles/get/response_error_get.json")
    #* def jsonTooManyRequests =  { "message" : "Too Many Requests"}


  Scenario Outline: Get info of an employee
      Given path <id>
      When method get
      Then assert responseStatus == <status> || responseStatus == 429
      #* def jsonExpected = responseStatus == 429 ? jsonTooManyRequests : <jsonMatch>
      # * print jsonExpected
      * print responseStatus
      * print response
      And match <jsonMatch> != response && responseStatus == 429 || response == <jsonMatch>

      Examples:
      |id     |status| jsonMatch   |
      |2      |200   | jsonBody200 |
      |335555 |404   | jsonBody404 |

