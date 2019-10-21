Feature: Opening the Menu screen and go to Routes

  Scenario: As a user I want to see the initial view of Routes when entering the application.
   Given I scroll up
    #to open te menu
   When I swipe left
    #select sreen
   And I scroll up
   #click link Estaciones
   And I press "Rutas"
   Then I should see "Universidades"