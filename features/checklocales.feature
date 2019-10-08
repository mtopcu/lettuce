Feature: Check all locales of SOMC

	Scenario Outline: Check their response should be OK
		Given I visit "<site>"
		Then I should get 200

	Examples: 
      | site        |
      | /us/        |
      | /cn/        |
      | /in/        |
      | /mx/        |
      | /br/        |
      | /gb/        |
      | /de/        |
      | /fr/        |
      | /es/        |
      | /ru/        |
      | /se/        |
      | /global-en/ |
      | /global-es/ |
      | /global-fr/ |