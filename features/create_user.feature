Feature: create a user

  As a Berkeley student
  So that I can use this service
  I want to be able to create an account

Scenario: A create user page should exist

  Given I am on the home page
  When  I follow "Register Now!"
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
  And   I fill in "location-field" with "Berkeley, CA"
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
  And   I fill in "location-field" with "Berkeley, CA"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "The passwords you entered do not match."

Scenario: filling in a too long description should throw an error

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I fill in "Password" with "heywhoareyou"
  And   I fill in "Password confirmation" with "heywhoareyou"
  And   I fill in "location-field" with "Berkeley, CA"
  And   I fill in "School or Company After Graduation" with "SoundCloud"
  And   I fill in "user_description" with "I make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or somethingI make music or something"
  And   I press "Create My Account"
  Then  I should be on the new_user_registration page
  And   I should see "Your description is too long"

#Scenario: correct signup should go to Map

#  Given I am on the new_user_registration page
#  And   I fill in "First name" with "Porter"
#  And   I fill in "Last name" with "Robinson"
#  And   I fill in "Email" with "test@berkeley.edu"
#  And   I fill in "Password" with "heywhoareyou"
#  And   I fill in "Password confirmation" with "heywhoareyou"
#  And   I fill in "Location" with "San Francisco, CA"
#  And   I fill in "School or Company After Graduation" with "SoundCloud"
#  And   I fill in "Quick Note About You" with "I make music or something"
#  And   I press "Create My Account"
#  Then  I should log in
