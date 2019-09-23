rendering-decisions
renderDecisionsAsTableOn: html
	| decisions |
	decisions := self session decisions.
	html
		tbsTable: [ html
				tableHead: [ html
						tableHeading: 'Name';
						tableHeading: 'Criteria';
						tableHeading: 'Top item';
						tableHeading: '' ].
			html
				tableBody: [ decisions
						do: [ :each | 
							html
								tableRow: [ html
										tableData: each name;
										tableData: [ self renderSummaryForProfile: each goalModel on: html ];
										tableData: [ self renderTopItemsFor: each on: html ].
									html
										tableData: [ html anchor
												callback: [ self editDecision: each ];
												with: [ html tbsGlyphIcon iconPencil ].
											html space.
											html anchor
												callback: [ self removeDecision: each ];
												with: [ html tbsGlyphIcon iconTrash ] ] ] ] ] ]