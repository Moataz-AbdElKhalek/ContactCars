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
  
  And  I am on the ContactCars home page
  
Scenario: Search on new cars
  When I select "Fiat" from "car_Brand"
  Then show me the page
  And I press "Search"
  Then I should be on the ContactCars home page
  Then show me the page
  And I should not see "MAD"
  And I should see "Yo"

Scenario: Show Old Cars
  When I select "Fiat" from "car_Brand"
 
