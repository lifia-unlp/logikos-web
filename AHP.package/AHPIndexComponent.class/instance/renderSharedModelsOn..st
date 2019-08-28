rendering
renderSharedModelsOn: html
	html heading
		level: 3;
		with: '3. Share your models'.
	html
		text:
			'Share your desicion models. Tell other decision makers what it is good for (types of items, profile of the decision maker, etc). Attach smart ranking strategies to tangible criteria. Make your models available to users of the Logikos web-extensions'.
	html
		unorderedList: [ self model sharedModels
				do: [ :each | 
					html
						listItem: [ html
								text: each title;
								space.
							html anchor
								callback: [ self editSharedModel: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Edit this model';
										iconPencil ].
							html space.
							html anchor
								callback: [ self removeSharedModel: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Trash this model';
										iconTrash ] ] ] ]