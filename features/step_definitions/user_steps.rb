Then /^(?:|I )should log in$/ do
  current_path.should == '/map'
end

Then(/^I should see the map$/) do
  text = "List of Alumni"
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Given(/^I am logged in$/) do
  steps %Q{
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
  }
end

Given(/^I am not logged in$/) do

end
