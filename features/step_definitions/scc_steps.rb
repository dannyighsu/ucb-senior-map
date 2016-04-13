# Check to see if the page has an element with a given ID
Then /^(?:the) page should have (.+)$/ do |text|
    if page.respond_to? :should
        page.should have_css(".#{text}")
    else
        assert page.has_css("div##{text}")
    end
end
