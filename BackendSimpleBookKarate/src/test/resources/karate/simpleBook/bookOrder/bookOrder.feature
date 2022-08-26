@orderBook
Feature: POST a book order

  As QA Automation
  I want to get books
  To validate response and status code

  Background: consume service
    * url url

  @ignore
  Scenario: POST a book order
    * def requestBody = read('classpath:karate/simpleBook/bookOrder/orderBody.json')
    * def responseOrder = read('classpath:karate/simpleBook/bookOrder/orderResponse.json')

    Given header Authorization = Token
    Given path 'orders'
    And request requestBody
    When method POST
    Then status 201
    And match response == responseOrder