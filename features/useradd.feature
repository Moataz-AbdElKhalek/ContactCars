Feature: search for cars by owner

  As a car seller
  So I can advertise my cars
  I want to create an account and add cars information to my account

Scenario: create new user
  Given I am on the ContactCars home page
  Then I follow "Login"
  Then I should be on the ContactCars login page
  Then I should see "Sign Up"
  When I follow "Sign Up"
  Then I should be on the ContactCars create_user page
  And I fill in "Name" with "MAD"
  And I fill in "Password" with "123"
  And I fill in "Phone" with "01001005050"
  And I fill in "Address" with "123 Shere3 el shokalata"
  And I press "Save"
  Then I should see "User was successfully created."

  When I follow "Login"
  Then I follow "Sign Up"
  Then I follow "Back"
  
  And I follow "Login"
  Then I should be on the ContactCars login page
  And I fill in "Name" with "MAD"
  And I fill in "Password" with "123"
  And I press "Logon"
  Then show me the page

  Then I should be on the ContactCars home page
  And I should see "Create New Car"
