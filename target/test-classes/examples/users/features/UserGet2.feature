Feature: user detailse number2

  Background: : get call test

    Given url 'https://reqres.in/api/users/2'
    When method get

  Scenario: verifying status code is 200
    Then status 200

  Scenario: printing and comparing json body
    Then print response
    Then match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/josephstein\/128.jpg"},"ad":{"company":"StatusCode Weekly","url":"http:\/\/statuscode.org\/","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things."}}


    Scenario: verifying response with read keyword
      * def expectedBody = read('../jsonFiles/response.json')
      * match response == expectedBody
       @ignore
      Scenario: verify id in data
        * match response.data.id == 2

        Scenario: verifying a key value is not null
          * match response.data.avatar != null

