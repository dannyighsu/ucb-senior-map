Feature: allow users to connect their LinkedIn profiles
  As a User
  So that I may more easily specify my company and location
  I should be able to log in with LinkedIn

Scenario: a log in with LinkedIn button should exist

  Given I am on the new_user_registration page
  Then  I should see the linkedin button
