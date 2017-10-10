Feature: Courses

	Scenario: Provider adds a Course
		Given they are on the new course page
		And they have filled out the form
		When they submit the form
		Then a course is saved
		And course is visible

	Scenario: Provider updates a course
		Given that the provider is on the update page
		And they have edited the content
		When they submit the form
		Then the course is updated
		And updated course is visible
