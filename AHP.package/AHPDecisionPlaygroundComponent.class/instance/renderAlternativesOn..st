rendering
renderAlternativesOn: html
	html heading
		level: 4;
		with: 'Suggested ranking of alternatives'.
	html
		orderedList: [ (self model alternatives
				asSortedCollection: [ :earlier :later | earlier overallPriority > later overallPriority ])
				do: [ :each | 
					html
						listItem: [ html text: each name.
							html space.
							self renderOverallPriorityFor: each on: html.
							html space.
							html anchor
								callback: [ self editAlternative: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Edit this alternative';
										iconPencil ].
							html space.
							html anchor
								callback: [ self removeAlternative: each ];
								with: [ html tbsGlyphIcon
										tbsTooltip: 'Trash this alternative';
										iconTrash ] ] ].
			allowsNew
				ifTrue: [ html
						listItem: [ html anchor
								callback: [ self addNewAlternative ];
								with: 'New ...' ] ] ]