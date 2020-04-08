Feature: Check CBR daily courses

  Background:
    Given url baseUrl
    And path 'daily_json.js'

  Scenario: Check courses response USD ID
    When method GET
    Then status 200
    And match response $.Valute.USD.ID == 'R01235'
