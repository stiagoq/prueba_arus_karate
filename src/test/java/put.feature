Feature: upload employees in dummy api example

  Background:
    * url baseURL
    * def upload_employees = read("classpath:../json_filles/put/upload_employee.json")
    * def jsonBody200 = read("classpath:../json_filles/put/response_upload_employee.json")
    * def jsonBody400 = read("classpath:../json_filles/put/reponse_error_put.json")

  Scenario Outline: Upload employees with method put
    * def upl = <upload>
    Given path "api/v1/update<id>"
    And request upl
    When method put
    * print responseStatus
    * print response
    Then assert responseStatus == <status> || responseStatus == 429
    And match <jsonMatch> != response && responseStatus == 429 || response == <jsonMatch> || responseStatus == 405

    Examples:
      |id|upload                   |status| jsonMatch  |
      |/2 |upload_employees.upload1|200   | jsonBody200|
      |   |upload_employees.upload1|405   | jsonBody400|
      #|2 |upload_employees.upload1|200   |




