
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
    When I fill name with Diandra Beames
    When I fill alias with Diandra
    When I select customer
    When I fill address with 5985 Briar Crest Park
    When I fill zipcode with 4203
    When I fill town with Famatina
    When I fill email with dbeames0@theglobeandmail.com
    When I fill phone with 666-991-9219
    When I try to create a customer
    Then I expect to have a new customer Diandra Beames 

Scenario: Create a ticket succesfull

  Given I go to dollibar home screen
    And I fill with  admin and Temporal01
    And I try to login
    Then I expect to see admin
    Then I click modulo Financiera
    Then I click menu Nueva factura
    When I select a customer
