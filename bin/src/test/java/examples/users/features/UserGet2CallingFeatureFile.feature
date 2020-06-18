Feature: trying to call feature file and validate
# DO NOT FORGET!! IF YOU PUT SPACE ( " " ) AFTER Feature AND BEFORE : you will get error
  # Gherkin language accepts 'Feature:'  block not 'Feature :'
  Background:
    * def expectedResponse = read ('../jsonFiles/response.json')
    * def feature = read('UserGet1.feature')
    * def result = call feature

    Scenario: request user 2 details
      * url 'https://reqres.in/api/users/2'
      * method GET
      * status 200
      * match response == expectedResponse
      * print 'result ...... : ' , result
      * def first_name = result.response.data.first_name
      * print 'firstname value : .... ' ,  first_name