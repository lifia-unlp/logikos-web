rendering
renderModelsOn: html
	html heading
		level: 3;
		with: 'Decision profiles (templates)'.
	html
		unorderedList: [ self model rootNodes
				do: [ :each | 
					html
						listItem: [ html
								text: each name;
								space.
							html anchor
								callback: [ self editNode: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Edit this template';
										iconPencil ].
							html space.
							html anchor
								callback: [ self remove: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Trash this template';
										iconTrash ].
							html space.
							html anchor
								callback: [ self newDecisionBasedOn: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Use this template in a new decision';
										iconShareAlt ] ] ].
			html
				listItem: [ html anchor
						callback: [ self newNode ];
						with: 'New ...' ] ]