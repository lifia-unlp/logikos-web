rendering
renderDecisionProfileChooserOn: html
	name
		ifNotNil: [ html tbsAlert beInfo
				with:
					'Now decide how you want to compare and rank the items you have collected. Each of the following strategies models a different way of comparing and ranking. Choose wisely !' ].
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
							(self session decisionProfiles
								copyWith:
									(LogikosDecisionProfile
										forItems: self session items))
								do: [ :each | 
									html
										tableRow: [ html
												tableData: [ html radioButton
														callback: [ profile := each ];
														group: group ];
												tableData: each name;
												tableData: each comments;
												tableData: [ self renderSummaryForProfile: each on: html ] ] ] ] ] ]