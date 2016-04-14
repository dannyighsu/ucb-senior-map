Feature: create a user

  As a Berkeley student
  So that I can use this service
  I want to be able to create an account

Scenario: A create user page should exist

  Given I am on the home page
  When  I follow "Register as a Berkeley Student"
  Then  I should be on the new_user_registration page

Scenario: creating a user should require first name

  Given I am on the new_user_registration page
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "Please enter your name."

Scenario: creating a user should require last name

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "Please enter your name."

Scenario: creating a user should require email

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "Please enter a berkeley.edu email address."

Scenario: creating a user should require valid email

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "asdf@fj"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "Please enter a berkeley.edu email address."

Scenario: creating a user should require a valid LinkedIn or location

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "Please provide either your LinkedIn account or a valid location."

Scenario: creating a user without LinkedIn should require a password of at least 6 characters

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I fill in "Password" with "hiyou"
  And   I fill in "Location" with "Berkeley, CA"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "Passwords must be at least 6 characters in length."

Scenario: creating a user without LinkedIn should require matching passwords

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I fill in "Password" with "heywhoareyou"
  And   I fill in "Password confirmation" with "idontknow"
  And   I fill in "Location" with "Berkeley, CA"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "The passwords you entered do not match."

Scenario: creating a user without LinkedIn should require a valid location

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I fill in "Password" with "heywhoareyou"
  And   I fill in "Password confirmation" with "heywhoareyou"
  And   I fill in "Location" with "somewhere over the rainbow"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "Please provide a valid location"

Scenario: correct login should go to Map

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I fill in "Password" with "heywhoareyou"
  And   I fill in "Password confirmation" with "heywhoareyou"
  And   I fill in "Location" with "San Francisco, CA"
  And   I press "Create My Account"
  Then  I should log in
