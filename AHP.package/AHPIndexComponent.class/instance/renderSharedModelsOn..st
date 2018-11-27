rendering
renderSharedModelsOn: html
	html heading
		level: 3;
		with: 'Shared models'.
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