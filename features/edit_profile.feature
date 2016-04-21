Feature: create a profile
  As a User
  So that I can enter my information
  I should be able to visit the Profile page

Scenario: The edit profile page exists

  Given I am logged in
  And   I am on the map page
  Then  I should see "Edit Profile"
  When  I follow "Edit Profile"
  Then  I should be on the edit profile page
  And   I should see "School or Company"

Scenario: Users can edit their profiles

  Given I am logged in
  And   I am on the edit profile page
  And   I fill in "user_school" with "SoundCloud"
  And   I fill in "Current password" with "heywhoareyou"
  And   I press "Update"
  Then  I should be on the map page
  And   I should see "Your account has been updated successfully."

Scenario: People who are not logged in should not see profile prompts

  Given I am not logged in
  And   I am on the home page
  Then  I should not see "Edit Profile"

Scenario: The user's LinkedIn account appears on the edit profile page if it exists

  Given I am logged in
  And   I am on the edit profile page
  And   I have a LinkedIn account
  Then  I should see "LinkedIn"
