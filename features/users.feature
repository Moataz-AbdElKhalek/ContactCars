Feature: search for cars by owner

  As a car seller
  So I can advertise my cars
  I want to create an account and add cars information to my account

Background: users in database
  Given the following users exist:

  |  Name  | Password | Phone          | Address         | 
  |  MAD   | 123      | '01001005050'  | '123 shokalata' |
  |  Yo    | 321      |	'01003006060'  | '321 shokalata' |
  
  And the following cars exist:
  
  | Brand  | Model | Year          | Engine    | Price | status | Owner |
  |  Fiat  | Panda | '25-Nov-2012' | '1500 cc' | 130000| 'new'  | 'Yo'  |
  |  BMW   | x10   | '25-Nov-2012' | '1500 cc' | 120000| 'old'  | 'MAD' |
  
  And  I am on the ContactCars login page
  
Scenario: Accessing member's only cars
  Given I am on the ContactCars home page
  Then show me the page
  Given I signed in as "MAD"
  Then I should be on the ContactCars home page
  And I should see "New Car"
  Then show me the page

Scenario: editing user
  Given I am on the ContactCars home page
  Given I signed in as "Yo"
  Then I should be on the ContactCars home page
  And I should see "Fiat"
  When I follow "Yo"
  Then I should see "Edit"
  When I follow "Edit"
  Then I should see "Editing user"
  And I fill in "Password" with "123"
  When I press "Save"
  Then I should see "User was successfully updated."

Scenario: deleting user
  Given I am on the ContactCars home page
  When I delete user "Yo"
  Then I should be on the ContactCars home page
  Then show me the page
  Then I should not see "Yo"
