Feature: Check google pages on all locales

	Scenario Outline: These pages should not exist on locales
		Given I visit "<site>/google6c1d6f13062cfede.html"
		Then I should not get 200

	Examples: 
      | site               |
      | /us                |
      | /cn                |
      | /in                |
      | /mx                |
      | /br                |
      | /gb                |
      | /de                |
      | /fr                |
      | /es                |
      | /ru                |
      | /se                |
      | /global-en         |
      | /global-es         |
      | /global-fr         |
      | /global-ar         |
      | /global-zh         |
      | /my                |
      | /sg                |
      | /ch-de             |
      | /ca-fr             |
      | /ch-fr             |
      | /hk                |
      | /ir                |
      | /sa                |
      | /tw                |
      | /vn                |
      | /ar                |
      | /eg                |
      | /iq                |
      | /ae                |
      | /ng                |
      | /za                |
      | /id                |
      | /pt                |
      | /pl                |
      | /gr                |
      | /tr                |
      | /dk                |
      | /no                |
      | /it                |
      | /nl                |
      | /il                |
      | /au                |
      | /ca-en             |
      | /ie                |
      | /th                |
      | /cl                |
      | /kr                |
      | /be                |
      | /cz                |
      | /fi                |
      | /hu                |
      | /ro                |
      | /ua                |
      | /bg                |
      | /be-fr             |
      | /co                |
      | /sa-en             |
      | /ae-en             |