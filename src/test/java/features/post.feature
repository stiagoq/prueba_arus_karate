Feature: Create employees in dummy api example

  Background:
    * url baseURL
    * path "api/v1/create"
    * def create_employees = read("classpath:../json_filles/post/create_employees.json")
    * def jsonBody200 = read("classpath:../json_filles/post/response_post_create_employee.json")

  Scenario Outline: Create employees with method post
      * def emp = <employee>
      Given request emp
      When method post
      * print responseStatus
      Then assert responseStatus == <status> || responseStatus == 429
      * print response
      And match jsonBody200 != response && responseStatus == 429 || response == jsonBody200

    Examples:
      | employee                 | status |
      |create_employees.employee1| 200    |
      |create_employees.employee2| 200    |
      |create_employees.employee3| 200    |
      | " "                      | 200    |

    @successful
    Scenario:
      Given request {"name": "Salome", "salary": 200000, "age": 24 }
      When method post
      * print response
      Then assert responseStatus == 200 || responseStatus == 429
      * def id = response.data.id
      * print id