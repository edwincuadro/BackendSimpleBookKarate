@authentication
Feature: Service client POST

  As QA Automation
  I want to create a user
  To get authentication

  Background: consume service
    * url url

  Scenario: Check the service GET method
    * def requestBody = read('classpath:karate/simpleBook/authentication/responseAuthen.json')

    Given path 'api-clients'
    And request requestBody
    When method POST
    Then status 201