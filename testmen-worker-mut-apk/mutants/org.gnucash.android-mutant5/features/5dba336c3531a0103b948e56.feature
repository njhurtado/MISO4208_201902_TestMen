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