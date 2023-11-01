Feature: upload employees in dummy api example

  Background:
    * url baseURL
    * def jsonBody200 = read("classpath:../json_filles/put/response_upload_employee.json")
    * def salary = karate.call("classpath:../files_javascript/ramdon_salary.js")
    * def name = karate.call("classpath:../files_javascript/ramdon_name.js")
    * def age = karate.call("classpath:../files_javascript/ramdon_age.js")
    * def upload1 = {"name": "#(name)", "salary": "#(salary)"}
    * def upload2 = {"age": "#(age)"}
    * def upload3 = {"age": "#(age)","name": "#(name)"}

  Scenario Outline: Upload employees with method put
    Given path "api/v1/update<id>"
    And request <upload>
    When method put
    Then status <status>
    And match response == <jsonMatch>

    Examples:
      |id|upload  |status| jsonMatch  |
      |/2 |upload2|200   | jsonBody200|
      |/3 |upload1|200   | jsonBody200|
      |/4 |upload3|200   | jsonBody200|






