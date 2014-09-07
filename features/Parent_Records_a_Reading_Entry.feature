Feature: Parent records a reading entry

	A parent wants to help his child record her reading for the week.
	They will enter data and save it to a spreadsheet. The teacher can then	view the spreadsheet and determine how much reading she is doing.

Scenario: Parent creates a new log entry
	Given the parent enters data into a form
	When the form is saved
	Then the reading log spreadsheet is saved with the new data
