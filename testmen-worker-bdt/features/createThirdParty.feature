#Complete siguiendo las instrucciones del taller.

Feature: Login into dollibar
    As an user I want to authenticate myself within dollibar website in order to admin resourcer
   
#Scenario: Create a third-party succesfull

#  Given I go to dollibar home screen
#    And I fill with  admin and Temporal01
#    And I try to login
#    Then I expect to see admin
#    Then I click modulo Terceros
#    Then I click menu Nuevo tercero
#    When I fill name with Nelson Hurtado
#    When I fill alias with Comerciante
#    When I select customer
#    When I fill address with 057
#    When I fill zipcode with Calle 7 No. 6c-54
#    When I fill town with Bogota
#    When I fill email with nj.hurtado@uniandes.edu.co
#    When I fill phone with Bogota 6079800
#    When I try to create a customer
#    Then I expect to have a new customer Nelson Hurtado 

Scenario: Create a ticket succesfull

  Given I go to dollibar home screen
    And I fill with  admin and Temporal01
    And I try to login
    Then I expect to see admin
    Then I click modulo Financiera
    Then I click menu Nueva factura
    When I select a customer