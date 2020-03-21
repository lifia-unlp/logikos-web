rendering
renderDecisionProfileChooserOn: html
	html label: 'Decision profile'.
	html paragraph: 'Choose a decision profile from the following list.'.
	self session decisionProfiles
		ifEmpty: [ ^ html tbsAlert
				beWarning;
				with: [ html
						strong: 'The list is empty.';
						text:
							' Go to the Profiles tab in the main screen and define your first decision profile.' ] ].
	html
		tbsTable: [ html
				tableHead: [ html
						tableHeading: '';
						tableHeading: 'Name';
						tableHeading: 'Notes';
						tableHeading: 'Weigths' ].
			html
				tableBody: [ html
						radioGroup: [ :group | 
							self session decisionProfiles
								do: [ :each | 
									html
										tableRow: [ html
												tableData: [ html radioButton
														callback: [ profile := each ];
														group: group ];
												tableData: each name;
												tableData: each comments;
												tableData: [ self renderSummaryForProfile: each on: html ] ] ] ] ] ]