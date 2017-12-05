Feature: property search for rent purposes
As I am a property searcher
In Order to find my next amazing flat
I Should able to see list of flats based on my search criteria

Scenario: Searching some flats around norwich area and see different page views
  Given I am navigated to zoopla homepage
  And I go to rent page
  And I set area as "Norwich"
  And I set min rent as "£500 pcm"
  And I set max rent as "£2,000 pcm"
  And I select property type as "Flats"
  When I click on search button
  Then I see the flats dispplaying from norwich area
  And I see list view is selected as default
  When I click on grid view
  And I see page view is changed to grid
  And I click on map view
  Then I see page view is changed to map
