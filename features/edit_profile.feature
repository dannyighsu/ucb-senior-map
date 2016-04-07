Feature: create a profile
  As a User
  So that I can enter my information
  I should be able to visit the Profile page

Scenario: The edit profile page exists

  Given I am logged in
  And   I am on the home page
  Then  I should see "Edit Profile"
  When  I follow "Edit Profile"
  Then  I should be on the edit_profile page
  And   I should see "LinkedIn"
  And   I should see "Company"

Scenario: Users can edit their profiles

  Given I am logged in
  And   I am on the edit_profile page
  And   I fill in "Company" with "Mash Music"
  And   I press "Save"
  Then  I should be on the edit_profile page
  And   I should see "Profile Updated Succesfully."

Scenario: People who are not logged in should not see profile prompts

  Given I am not logged in
  And   I am on the home page
  Then  I should not see "Edit Profile"
