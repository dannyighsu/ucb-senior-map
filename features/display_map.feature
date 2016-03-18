Feature: display a map of users

  As a Berkeley student
  So that I can connect with my peers
  I want to see a map of other users' locations

Scenario: a logged in student should be able to view the map
  
  Given that I am logged in as a senior
  When I am on the home page
  Then I should see "View the map"
  When I click "View the map"
  Then I should be on the map page
  And I should see the map
  
Scenario: a non-student should not be able to see the map
  
  Given that I am not logged in
  And I am on the home page
  Then I should not see "View the map"
  And when I am on the map page
  Then I should see "Log in to see the map"