Feature: Calabash Testing

  Scenario: Checking if button click works
    When I press the "Click me" button
    Then I see the text "Hello World!"
    
  Scenario: Going to next screen and back
  	When I enter "Something" into input field number 1
  	Then I press the "See details" button
  	Then I wait
  	Then I should see text containing "Something"
  	Then I go back
  	Then I should see text containing "test app"
  
  Scenario: Clear the input field
  	When I enter "Something" into input field number 1
  	Then I clear input field number 1
  	Then I press the "See details" button
  	Then I should not see "Something"
  	
  Scenario: Checkboxes
  	When I toggle checkbox number 1
  	Then I should see text containing "checked now"
  	Then I wait
  	Then I toggle checkbox number 1
  	Then I should see text containing "not checked"
  	 
   
  
  
   
