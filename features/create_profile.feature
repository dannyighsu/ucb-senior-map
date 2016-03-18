Feature: create a profile
  As a User
  So that I can enter my information
  I should be able to visit the Profile Creation page

Scenario: Users without a profile should be prompted to create a profile

    Given I am logged in as a a user without a profile
    And I am on the home page
    Then I should see "Create Profile"
    When I click on "Create Profile"
    Then I should be on the Create Profile page
    And I should see "Facebook"
    And I should see "LinkedIn"
    And I should see "Company"

Scenario: People who are not logged in should not see profile prompts

    Given I am not logged in
    And I am on the home page
    Then I should not see "Create Profile"
