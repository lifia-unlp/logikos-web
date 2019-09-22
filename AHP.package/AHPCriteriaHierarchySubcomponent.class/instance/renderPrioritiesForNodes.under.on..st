rendering
renderPrioritiesForNodes: nodes under: parentNode on: html
	html
		unorderedList: [ (nodes asSortedCollection: [ :a :b | a name < b name ])
				do: [ :each | 
					html
						listItem: [ html text: each name.
							html space.
							self renderPrioritiesFor: each under: parentNode on: html.
							self renderActionButtonsFor: each under: parentNode on: html.
							each nonAlternativeNodes
								ifNotEmpty: [ self renderPrioritiesForNodes: each nodes under: each on: html ] ] ].
			parentNode = node & readOnly not
				ifTrue: [ html
						listItem: [ html anchor
								callback: [ self newNode ];
								with: 'New ...' ] ] ]