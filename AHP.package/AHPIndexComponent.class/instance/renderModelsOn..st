rendering
renderModelsOn: html
	html heading
		level: 3;
		with: '1. Build your decision models'.
		html text: 'Create decision models (Analytic hierarchy process trees). Organize criteria in decision trees and define their relative importances '.
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
										tbsTooltip: 'Edit this model';
										iconPencil ].
							html space.
							html anchor
								callback: [ self remove: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Trash this model';
										iconTrash ].
							html space.
							html anchor
								callback: [ self newDecisionBasedOn: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Test this model';
										iconCheck ].
							html space.
							html anchor
								callback: [ self newSharedModelBasedOn: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Share this model';
										iconShareAlt ] ] ].
			html
				listItem: [ html anchor
						callback: [ self newNode ];
						with: 'New ...' ] ]