rendering
renderAlternativesOn: html
	html heading
		level: 4;
		with: 'Alternatives'.
	html
		unorderedList: [ self model alternatives
				do: [ :each | 
					html
						listItem: [ html text: each name.
							html space.
							self renderOverallPriorityFor: each on: html.
							html space.
							html anchor
								callback: [ self editAlternative: each ];
								with: [ html tbsButton
										beExtraSmall;
										with: 'Edit' ].
							html space.
							html anchor
								callback: [ self removeAlternative: each ];
								with: [ html tbsButton
										beExtraSmall;
										with: 'Remove' ] ] ] ].
	html anchor
		callback: [ self addNewAlternative ];
		with: [ html tbsButton
				beExtraSmall;
				with: 'New' ]