Feature: Post API Demo

Background:
* url 'https://reqres.in/api'
* header Accept = 'application/json'



# Simple Post request
Scenario: Post demo 1
Given url 'https://reqres.in/api/users'
And request {"name": "Deepshikha","job": "testEngineer"}
When method POST
Then status 201
And print response

# Post with Background
Scenario: Post demo 2
Given path '/users'
And request {"name":"Deepshikha","job":"testEngineer"}
When method POST
Then status 201
And print response

# Post with Assertions
Scenario: Post demo 3
Given path '/users'
And request {"name":"Deepshikha","job":"testEngineer"}
When method POST
Then status 201
And match response =={"name":"Deepshikha","job":"testEngineer","id":"#string","createdAt":"#ignore"}
And print response

# Post with read response from file
Scenario: Post Demo 4
Given path '/users'
And request {"name":"Deepshikha","job":"testEngineer"}
When method POST
Then status 201
And print response

# Post with read request body from file
Scenario: Post Demo 5
Given path  '/users'
And def projectPath = karate.properties['user.dir']
And print projectPath
And  def filePath = projectPath+'/src/test/java/tests/request1.json'
And def requestBody1 = filePath
And request requestBody1
When method POST
Then status 201
And print response


# Post with read response from file
Scenario: Post Demo 6
Given path  '/users'
And def reqBody = read("request1.json")
And set reqBody.job = 'engineer'
And request reqBody
When method POST
Then status 201
And print response







