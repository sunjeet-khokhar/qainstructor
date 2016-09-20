require 'rubygems'
require 'selenium-webdriver'
Before do
  @browser = Selenium::WebDriver.for(:chrome)
end
Given(/^I am on the front page$/) do
  @browser.get('http://google.com')
 #@browser.quit
end
When(/^I search for "([^"]*)"$/) do |search_phrase|
  element = @browser.find_element(:name,"q")
  element.send_keys(search_phrase)
  element.submit
  #@browser.quit
end
Then(/^I should see "([^"]*)"$/) do |expected_text|
  sleep 2
  body = @browser.find_element(:tag_name,"body")
  expect(body.text).to include(expected_text)
end

