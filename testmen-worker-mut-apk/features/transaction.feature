Feature: Accounts

  Scenario: Create default accounts
    Given I press the "NEXT" button  
    Then I press the "NEXT" button    
    Then I press the "NEXT" button  
    Then I wait for 1 seconds
    Then I touch the "Automatically" text
    Then I press the "NEXT" button  
    Then I press the "DONE" button  
    Then I see "New"

  Scenario: Create a transaction 
    Then I press "Assets"
    Then I press "Current Assets"
    Then I press "Cash in Wallet"
    Then I press FloatingActionButton id "fab_create_transaction"
    Then I enter text "Transaction ok" into field with id "input_transaction_name"
    Then I clear input field number 2       
    Then I press number 256 on keyboard
    Then I touch the "SAVE" text
    Then I see "Transaction ok"