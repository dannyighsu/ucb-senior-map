Feature: display a map of users

  As a Berkeley student
  So that I can connect with my peers
  I want to see a map of other users' locations

Scenario: A logged in user should be redirected to the map page when accessing home

  Given I am logged in
  When  I follow "Home"
  Then  I should be on the map page

Scenario: a logged in user should be able to view the map

  Given I am logged in
  And   I am on the map page
  Then  I should see the map
