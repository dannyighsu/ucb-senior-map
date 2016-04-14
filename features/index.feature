Feature: Have basic reference routes

  As a user of this application
  So that I can gain further information on it
  I want to be able to access information pages

Scenario: there should exist an About page

  Given I am on the home page
  And I follow "about us"
  Then I should be on the about page
  And I should see "Berkeley Senior Class Council"

Scenario: there should exist a Contact page

  Given I am on the home page
  And I follow "contact"
  Then I should be on the contact page
  And I should see "Email"

Scenario: there should exist a Help page

  Given I am on the home page
  And I follow "help"
  Then I should be on the help page
  And I should see "FAQ"
