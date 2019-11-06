
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
    When I fill name with <name>
    When I fill alias with <alias>
    When I select customer
    When I fill address with <address>
    When I fill zipcode with <zip>
    When I fill town with <town>
    When I fill email with <email>
    When I fill phone with <phone>
    When I try to create a customer
    Then I expect to have a new customer <name>

    Examples: 
    | name            | email | address  | phone  | alias  | zip  | town  | 
| Boy Widdop |bwiddop0@woothemes.com |643 Gulseth Road |724-869-8293 |Boy | |Songnim |
| Corry Rotge |crotge1@ocn.ne.jp |1 Huxley Street |792-907-7543 |Corry |76200 |Dadu |
| Leo Wellbeloved |lwellbeloved2@smugmug.com |41569 Logan Circle |889-715-2605 |Leo |22-470 |Zwierzyniec |
| Farica Iliff |filiff3@ca.gov |1 Ohio Center |478-821-7933 |Farica |6704 |Szeged |
| Clyde Haylett |chaylett4@cmu.edu |19917 Pierstorff Way |687-262-2182 |Clyde | |Bali |
| Griselda Tatham |gtatham5@tmall.com |9 Merrick Road |838-779-6648 |Griselda | |Pop Shahri |
| Major Stillgoe |mstillgoe6@paginegialle.it |8 Gale Park |949-407-1420 |Major | |Ngundaan |
| Kara-lynn Dubble |kdubble7@indiegogo.com |4502 Meadow Valley Lane |393-405-5360 |Kara-lynn |56250-000 |Trindade |
| Elsy Troubridge |etroubridge8@earthlink.net |70 Amoth Hill |828-793-2020 |Elsy |4600-730 |Várzea |
| Jo-anne Liversedge |jliversedge9@wix.com |4063 Esker Trail |292-975-5119 |Jo-anne |1101 |Kipit |
