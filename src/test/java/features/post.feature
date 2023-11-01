Feature: Create employees in dummy api example

  Background:
    * url baseURL
    * path "api/v1/create"
    * def jsonBody200 = read("classpath:../json_filles/post/response_post_create_employee.json")
    * def salary = karate.call("classpath:../files_javascript/ramdon_salary.js")
    * def name = karate.call("classpath:../files_javascript/ramdon_name.js")
    * def age = karate.call("classpath:../files_javascript/ramdon_age.js")
    * def employee = {"name": "#(name)", "salary": "#(salary)", "age": "#(age)"}

  Scenario: Create employees with method post
    Given request employee
    When method post
    Then status 200
    And match response == jsonBody200

    @successful
    Scenario: Create employees with method post for delete feature
      Given request employee
      When method post
      * print response
      Then status 200
      * def id = response.data.id