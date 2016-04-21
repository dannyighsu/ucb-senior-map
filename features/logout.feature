Feature: Sign out of an account
  As a User
  So that I may finish my session
  I should be able to sign out of my account

Scenario: Sign out button should exist

  Given I am logged in
  And   I am on the map page
  Then  I should see "Sign Out"

Scenario: Sign out button should log users out

  Given I am logged in
  And   I am on the map page
  And   I follow "Sign Out"
  Then  I should be on the home page
