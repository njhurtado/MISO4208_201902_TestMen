Feature: Search routes

  Scenario: As an user I want to search an route to view stop stations.
    Given I scroll up
  Scenario Outline: I want to search for any station typing the station name
   Given I scroll up
    #to open te menu
   When I swipe left
    #select sreen
   And I scroll up
   #click link Estacones
   And I press "Estaciones"
   And I press <keyLetter>
   Then I wait to see <nameStation>
   And I scroll up
   And I press <nameStation>
   Then I wait to see <nameStation>
   Examples:
            | keyLetter| nameStation| viewText |
            | "A"       | "Avenida Cali"| "Localidad: Engativá"|