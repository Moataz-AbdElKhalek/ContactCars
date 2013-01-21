Feature: search for cars by director

  As a car seller
  So I can see my cars
  I want to open my account and see my cars information

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
  Given I signed in as "MAD"
  Then I should be on the ContactCars home page
  And I should see "Create New Car"
  When I follow "signout"
  Then I should be on the ContactCars home page
  
 Scenario: Accessing as guest cars
  Given I am on the ContactCars home page
  Then I should not see "Create New Car"
