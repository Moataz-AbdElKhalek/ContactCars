Feature: search for cars by owner

  As a car seller
  So I can advertise my cars
  I want to create an account and add cars information to my account

Background: users in database
  Given the following users exist:

  |  Name  | Password | Phone          | Address         | 
  |  MAD   | 123      | '01001005050'  | '123 shokalata' |
  |  Yo    | 321      |	'01003006060'  | '321 shokalata' |
  
  And  I am on the ContactCars login page
  
Scenario: Accessing member's only cars
  Given I am on the ContactCars home page
  Then show me the page
  Given I signed in as "MAD"
  Then I should be on the ContactCars home page
  And I should see "New Car"
  Then show me the page
