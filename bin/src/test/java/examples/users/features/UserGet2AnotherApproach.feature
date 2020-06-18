Feature: user details checking
  Background:
    # if your feature file and json file are in same location, same package
    # read('xxx.json') can be used basically BUT if they are in different locations,
    # it is needed to indicate location, there are multiple ways to indicate location
  * def expectedResponse = read('../jsonFiles/response.json')
    * def expectedResponse3 = read('../jsonFiles/response3.json')




    Scenario: request get for seocnd option and verify
      * url 'https://reqres.in/api/users/2'
      * method GET
      * status 200
      * print response
      * match response == expectedResponse



      Scenario: request get for third option and verify
        * url 'https://reqres.in/api/users/3'
        * method GET
        * status 200
        * print response
        # if i put == mark it fails
        * match response != expectedResponse

         @ignore
        Scenario: verifynig 3rd one oly
          * url 'https://reqres.in/api/users/3'
          * method GET
          * match response == expectedResponse3
