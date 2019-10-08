#Pyton test automation framework with Lettuce and Splinter libraries by using Selenium.

Feature: Check some locales via Selenium Session on Browsers

	Scenario Outline: Check Sony Mobile Communications text on pages
		When I use Selenium
		Given I go to "<site>"
		Then I should see the text "Sony Mobile Communications"
		And close Selenium session

	Examples: 
      | site        |
      | /us/        |
      | /se/        |
      | /no/        |
      | /de/        |