rendering
renderModelsOn: html
	html heading
		level: 3;
		with: 'Available decision models'.
	html
		unorderedList: [ self model rootNodes
				do: [ :each | 
					html
						listItem: [ html
								text: each name;
								space.
							html anchor
								callback: [ self editNode: each ];
								with: [ html tbsButton
										beExtraSmall;
										with: 'Edit' ].
							html space.
							html anchor
								callback: [ self remove: each ];
								with: [ html tbsButton
										beExtraSmall;
										with: 'Remove' ].
							html space.
							html anchor
								callback: [ self newDecisionBasedOn: each ];
								with: [ html tbsButton
										beExtraSmall;
										with: 'Use' ] ] ] ].
	html anchor
		callback: [ self newNode ];
		with: 'New ...'