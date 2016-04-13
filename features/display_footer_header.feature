Feature: See header and footer
  As a User
  So that I can navigate throughout the page
  I should be able to see and visit links from the header and footer
  
Scenario: Headers and Footers appears on every page

  Given I am on the home page
  Then  the page should have header
  Then  the page should have footer
  Given I am on the contact page
  Then  the page should have footer
  Then  The page should have header
  Given I am on the about page
  Then  the page should have footer
  Then  The page should have header
  Given I am on the help page
  Then  the page should have footer
  Then  The page should have header
  Given I am on the map page
  Then  the page should have footer
  Then  The page should have header
  Given I am on the profile creation page
  Then  the page should have footer
  Then  The page should have header

Scenario: Header links work and are correct

  Given I am on the home page
  When  I follow "Contact"
  Then  I should be on the contact page
  When  I follow "Help"
  Then  I should be on the help page
  When  I follow "About"
  Then  I should be on the about page

Scenario: Footer links work and are correct

  Given I am on the home page
  When  I follow "Contact Us"
  Then  I should be on the contact page
  When  I follow "Help"
  Then  I should be on the help page
  When  I follow "About Us"
  Then  I should be on the about page
  
Scenario: People who are not logged should see a link to sign in and not to sign out

  Given I am not logged in
  And   I am on the home page
  Then  I should see "Sign Up"
  Then  I should not see "Sign Out"
  
Scenario: People who are logged in should see a link to sign out and not sign in

  Given I am logged in
  And   I am on the map page
  Then  I should see "Sign Out"
  Then  I should not see "Sign Up"
