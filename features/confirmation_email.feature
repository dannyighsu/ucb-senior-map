Feature: send a confirmation email for sign up
  As a User
  So that I can access my account after signing up
  I should be able to use the service after receiving a confirmation email

Scenario: correct signup should send a confirmation email

  Given I am on the new_user_registration page
  And   I fill in "First name" with "Porter"
  And   I fill in "Last name" with "Robinson"
  And   I fill in "Email" with "test@berkeley.edu"
  And   I fill in "Password" with "heywhoareyou"
  And   I fill in "Password confirmation" with "heywhoareyou"
  And   I fill in "Location" with "San Francisco, CA"
  And   I fill in "School or Company" with "SoundCloud"
  And   I fill in "Quick Note About You" with "I make music or something"
  And   I press "Create My Account"
  Then  I should be on the home page
  And   I should see "A confirmation email has been sent to the email you provided. Please check the email to continue."

Scenario: users should be able to verify through their link

  Given I have just verified my account
  Then  I should be on the verification page
  And   I should see "Your account has been verified!"
