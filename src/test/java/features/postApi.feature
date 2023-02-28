Feature: Create user

  Background:
    * url 'http://localhost:3000'
    * def RequestBody =
    """
    {

    "first_name": "Uluc",
    "last_name": "Matissoff",
    "email": "ecanEfe0@webs.com",
    "gender": "FeMale",
    "address": [
      {
        "Apt": "1905"
      },
      {
        "Kapı": "21"
      }
    ]
  }

    """

  Scenario: CreateUser
    Given path "/person"
    And request RequestBody
    When method post
    Then status 201
    And match $.first_name == 'Uluc'
#fetch the user id
  * def UserID = $.id
    Given path 'person/'+ UserID
    When method Delete
    Then status 200

