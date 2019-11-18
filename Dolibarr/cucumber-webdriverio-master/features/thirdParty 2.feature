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
    When I fill name with Britteny Downer
    When I fill alias with Britteny
    When I select customer
    When I fill address with 337 Sage Parkway
    When I fill zipcode with 12345
    When I fill town with Jiang’an
    When I fill email with bdowner0@usatoday.com
    When I fill phone with 906-724-3761
    When I try to create a customer
    Then I expect to have a new customer Britteny Downer 
    Then I log out

Scenario: Create a ticket succesfull

  Given I go to dollibar home screen
    And I fill with  admin and Temporal01
    And I try to login
    Then I expect to see admin
    Then I click modulo Financiera
    Then I click menu Nueva factura
    When I select a customer

