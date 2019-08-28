rendering
renderDecisionsOn: html
	html heading
		level: 3;
		with: '2. Test your models'.
		html text: 'Test your decision models with concrete alternatives. Explore the aplicability of smart ranking strategies to avoid pair-wise comparison among alternatives.'.
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
										tbsTooltip: 'Edit this test';
										iconPencil ].
							html space.
							html anchor
								callback: [ self removeDecision: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Trash this test';
										iconTrash ] ] ] ]