Feature: Get book list
  As QA Automation
  I want to get books
  To validate response and status code
  
  Background: 
    * url url
    
    Scenario: Get book list with ok stauts
      * def responseBook = read('classpath:karate/simpleBook/bookList/resposeBook.json')

      Given path 'books'
      When method GET
      Then status 200
      And match response == responseBook