rendering
renderDecisionsOn: html
	html heading
		level: 3;
		with: 'Active decisions'.
	html
		unorderedList: [ self model decisions
				do: [ :each | 
					html
						listItem: [ html
								text: each name;
								space.
							html anchor
								callback: [ self editDecision: each ];
								with: [ html tbsButton
										beExtraSmall;
										with: 'Edit' ].
							html space.
							html anchor
								callback: [ self removeDecision: each ];
								with: [ html tbsButton
										beExtraSmall;
										with: 'Remove' ] ] ] ]