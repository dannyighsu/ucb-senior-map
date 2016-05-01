Feature: standardize locations with Google Locations
  As a User
  So that I may pick a location while signing up
  I should be given a list of suggestions

  Scenario: creating a user without LinkedIn should require a valid location

    Given I am on the new_user_registration page
    And   I fill in "location-field" with "Berkeley"
    Then  I should see "Berkeley"
