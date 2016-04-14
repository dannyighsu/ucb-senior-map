Feature: Log into your account

  As a user of this application
  So that I may access my account
  I want to be able to log in to my account

Scenario: A login page should exist

  Given I am on the home page
  When  I follow "Sign In"
  Then  I should be on the new_user_session page

Scenario: The login page should ask for email and password

  Given I am on the new_user_session page
  Then  I should see "Email"
  And   I should see "Password"

Scenario: The login page should create a user session

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I fill in "Password" with "password"
  And   I fill in "Password confirmation" with "password"
  And   I fill in "Location" with "San Francisco, CA"
  And   I press "Create My Account"
  And   I follow "Sign Out"
  And   I follow "Sign In"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I fill in "Password" with "password"
  And   I press "Log in"
  Then  I should log in
