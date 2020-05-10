Feature: reqres GET exercise number 1

Background: create and retrieve a cat
    
    * url 'https://reqres.in/api/users?page=2'
    *  method get


    Scenario: printing response body to console
        * print response
        *  status 200
    Scenario: verifying response body is smaller than 999ms
        * print responseTime
        * assert responseTime < 999

    Scenario:  getting 1st id  of data
        * print response.data.id[1]

    Scenario: getting initial values from json body
        * print 'page number is : ', response.page






