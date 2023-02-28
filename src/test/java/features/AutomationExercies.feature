Feature:APIS LIST FOR PRACTICE
  Background:
    * url 'https://automationexercise.com/api/'

  Scenario:API 1: Get All Products List
    Given path "productsList"
    When method Get
    Then status 200
    * print response

    Scenario:API 2: POST To All Products List
    * def query = { "responseCode": 405, "message": "This request method is not supported."}
      Given path "productsList"
      And params query
      When method POST
      Then status 200
      
    Scenario: API 3: Get All Brands List
      Given path "brandsList"
      When method GET
      Then status 200
      * def jsonResponse = response.brands
      * def userCount = jsonResponse.length
      * print userCount
      * match userCount == 34
