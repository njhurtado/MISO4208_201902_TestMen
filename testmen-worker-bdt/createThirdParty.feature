#Complete siguiendo las instrucciones del taller.

Feature: Login into dollibar
    As an user I want to authenticate myself within dollibar website in order to admin resourcer
   
Scenario: Create a third-party succesfull

  Given I go to dollibar home screen
    And I fill with  admin and Temporal01
    And I try to login
    Then I expect to see admin
    Then I click modulo Terceros
    Then I click menu Nuevo tercero
    When I fill name with Evangelina McCurley
    When I fill alias with Evangelina
    When I select customer
    When I fill address with 4 Red Cloud Junction
    When I fill zipcode with 4384
    When I fill town with Vlissingen
    When I fill email with emccurley0@eepurl.com
    When I fill phone with 616-623-6332
    When I try to create a customer
    Then I expect to have a new customer Evangelina McCurley 

Scenario: Create a ticket succesfull

  Given I go to dollibar home screen
    And I fill with  admin and Temporal01
    And I try to login
    Then I expect to see admin
    Then I click modulo Financiera
    Then I click menu Nueva factura
    When I select a customer
