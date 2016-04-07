Feature: Log into your account

  As a user of this application
  So that I may access my account
  I want to be able to log in to my account

Scenario: A login page should exist

  Given I am on the home page
  When  I follow "Log In"
  Then  I should be on the new_user_session page

Scenario: The login page should ask for email and password

  Given I am on the new_user_session page
  Then  I should see "Email"
  And   I should see "Password"
