Feature: AutomationExercies UI_TC_01
  Background:
    * configure driver = { type: 'chrome'}
  Scenario: TC_01
    Given driver 'http://www.automationexercise.com'
    * driver.maximize()
    * def homeText = text("//a[normalize-space()='Home']")
    And print homeText
    * def title = driver.title
    * print title
    Then match driver.title == 'Automation Exercise'
    * click("//a[normalize-space()='Signup / Login']")
    * def NewUser = text("//h2[normalize-space()='New User Signup!']")
    Then match NewUser == 'New User Signup!'
    And input("//input[@placeholder='Name']",'mehmet akbayır')
    And input("//input[@data-qa='signup-email']",'mehmet.akbayir58@gmail.com')
    * click("//button[normalize-space()='Signup']")
    * def EnterAcc = text("//body/section[@id='form']/div/div/div/div/h2[1]")
    Then match EnterAcc == 'Enter Account Information'
    * delay(3000)
    * click("//input[@id='id_gender1']")
    Then input("//input[@id='password']",'R-e-i-s58')
    And select("//select[@id='days']",'{}17')
    And select("//select[@id='months']",'{}April')
    And select("//select[@id='years']",'{}1987')

    * def bytes = screenshot(false)
    * def file = karate.write(bytes,'test.png')
    * def NameValue = value("//input[@id='name']")
    * scroll("//input[@id='first_name']")
    Then input("//input[@id='first_name']",NameValue.split(" ",1))
    And input("//input[@id='last_name']",NameValue.split(" ",2))
    Then input("//input[@id='address1']","address")


    * delay(2000)


