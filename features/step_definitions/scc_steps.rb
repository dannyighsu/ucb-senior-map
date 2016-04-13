# Check to see if the page has an element with a given ID
Then /^The page should have (\w+)$/ do |text|
    if page.respond_to? :should
        page.should have_css("div##{text}")
    else
        assert page.has_css("div##{text}")
    end
end

# Then(/^The page should have header$/) do
#     page.should have_css("div#header")
# end