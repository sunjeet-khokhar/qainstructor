Feature: search

Scenario: Search for "apple"
Given I am on the front page
When I search for "apple"
Then I should see "apple.com"
