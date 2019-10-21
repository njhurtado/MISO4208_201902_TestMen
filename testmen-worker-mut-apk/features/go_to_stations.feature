Feature: Opening the Menu screen and go to Stations

  Scenario: As a user I want to see the initial view of Stations when entering the application.
   Given I scroll up
    #to open te menu
   When I swipe left
    #to open te menu
   And I scroll up
   And I press "Estaciones"
   Then I should see "Suba"