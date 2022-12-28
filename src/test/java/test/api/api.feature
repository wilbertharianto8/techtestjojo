Feature: TechTest API

  Background:
    * url 'https://api.weatherbit.io/v2.0'

  Scenario: GET /current?lat={lat}&lon={lon} for values {lat} as 40.730610 and {lon} as -73.935242 

    Given url 'https://api.weatherbit.io/v2.0/current'
    And param lat = 40.730610
    And param lon = -73.935242
    And param key = '882737f1e35e4a26abce34e5a410ade7'
    When method get
    Then status 200
    And print response.data[0].state_code

  Scenario: GET /current?postal_code={postal_code}

    Given url 'https://api.weatherbit.io/v2.0/current'
    And param postal_code = 14450
    And param key = '882737f1e35e4a26abce34e5a410ade7'
    When method get
    Then status 200
    And print response.data[0].datetime
    And print response.data[0].weather