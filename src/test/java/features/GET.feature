Feature: GET API
  Scenario: Get All User
    * def query = {"gender": "Female"}
    Given url 'http://localhost:3000/'
    And path 'person'
    And header Connection = 'Keep-Alive'
    And header Content-Type = 'application/json; charset=utf-8'
    When method get
    Then status 200
    * print response
    * def jsonResponse = response
    * def usersayisi = jsonResponse.length
    * def firstN = jsonResponse[0].address[0].Apt
    * print firstN
    * print usersayisi
    * match usersayisi == 100


    

