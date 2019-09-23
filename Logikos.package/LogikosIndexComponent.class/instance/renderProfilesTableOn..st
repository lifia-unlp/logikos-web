rendering-profiles
renderProfilesTableOn: html
	html
		tbsTable: [ html
				tableHead: [ html
						tableHeading: 'Name';
						tableHeading: 'Comments';
						tableHeading: 'Criteria';
						tableHeading: '' ].
			html
				tableBody: [ self session decisionProfiles
						do: [ :profile | 
							html
								tableRow: [ html
										tableData: profile name;
										tableData: profile comments;
										tableData: [ self renderSummaryForProfile: profile on: html ];
										tableData: [ html anchor
												callback: [ self editDecisionProfile: profile ];
												with: [ html tbsGlyphIcon iconPencil ].
											html space.
											html anchor
												callback: [ self removeDecisionProfile: profile ];
												with: [ html tbsGlyphIcon iconTrash ] ] ] ] ] ]