Feature: First UI
  Scenario: Go to Amazon
    Given driver 'https://www.amazon.com.tr'
    And input('#twotabsearchtextbox','Karate'+Key.ENTER)
    Then waitForText()('#a-color-state a-text-bold','karate')

