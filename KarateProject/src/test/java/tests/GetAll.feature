Feature: To check all student success APIs

Scenario: To check Get All Job Descriptions and Test the Application
Given url 'https://localhost:9998/normal/webapi/all'
When method get
Then status 200
And print response