Feature: Featured Offers

	Scenario: A guest sees featured offers on the homepage 
		Given there are some featured offers
		When they visit the homepage
		Then they see the featured offers
	 