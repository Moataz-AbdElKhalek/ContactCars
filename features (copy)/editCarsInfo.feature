Feature: search for cars by owner

  As a car seller
  So I can see others' cars
  I want to login with my an account and see a car information

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
  
Scenario: Accessing others cars Info
  Given I am on the ContactCars home page
  Given I signed in as "MAD"
  Then I should be on the ContactCars home page
  And I should see "Fiat"
  When I follow "MAD"
  Then I should see "01001005050"

Scenario: Not editing cars Info sad path
  Given I am on the ContactCars home page
  Given I signed in as "MAD"
  Then I should be on the ContactCars home page
  And I should see "Fiat"
  When I follow "Show"
  Then show me the page
  Then I should not see "Edit"

Scenario: editing cars Info
  Given I am on the ContactCars home page
  Given I signed in as "Yo"
  Then I should be on the ContactCars home page
  And I should see "Fiat"
  When I follow "Show"
  Then show me the page
  Then I should see "Edit"
