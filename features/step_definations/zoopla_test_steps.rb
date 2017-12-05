Given(/^I am navigated to zoopla homepage$/) do
  visit("https://www.zoopla.co.uk/")
end

And(/^I go to rent page$/) do
  click_on("search-tabs-to-rent")
end

And(/^I set area as "([^"]*)"$/) do |location|
  find("#search-input-location").set(location)
  find(:xpath, "/html/body/ul/li[1]/a").click
end

And(/^I set min rent as "([^"]*)"$/) do |min_rent|
  find("#rent_price_min_per_month").select(min_rent)
  expect(min_rent).to eq("£500 pcm")
end

And(/^I set max rent as "([^"]*)"$/) do |max_rent|
  find("#rent_price_max_per_month").select(max_rent)
  expect(max_rent).to eq("£2,000 pcm")
end

And(/^I select property type as "([^"]*)"$/) do |property_type|
  find("#property_type").select(property_type)
end

When(/^I click on search button$/) do
  click_button("Search")
end

Then(/^I see the flats dispplaying from norwich area$/) do
  expect(page).to have_content("Flats to rent in Norwich")
end

And (/^I see list view is selected as default$/) do
  if expect(page).to have_css("span.listing-view-link.is-active")
    puts "this page on list view at the moment"
  else
    puts "dammit"
  end
end
When (/^I click on grid view$/) do
  find(:xpath, "/html/body/div[3]/div/div[1]/div[3]/div[3]/a[1]/i").click
  sleep 2 # make sure page loads completly
end
And (/^I see page view is changed to grid$/) do
  expect(page.current_url).to end_with("view_type=grid")
end
And (/^I click on map view$/) do
  find(:xpath, "/html/body/div[3]/div/div[1]/div[3]/div[3]/a[2]/i").click
  sleep 2 # make sure page loads completly
end
Then (/^I see page view is changed to map$/) do
  expect(page.current_url).to end_with("view_type=map")
end
