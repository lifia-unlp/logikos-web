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
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Edit this decision';
										iconPencil ].
							html space.
							html anchor
								callback: [ self removeDecision: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Trash this decision';
										iconTrash ] ] ] ]