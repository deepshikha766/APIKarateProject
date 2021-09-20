Feature: PUT API DEMO

Scenario: Put demo 1
Given url 'https://reqres.in/api/users/2'
And request {"name":"Deepshikha","job":"testEngineer"}
When method PUT
Then status 200
And print response
