rendering
renderPrioritiesForNodes: nodes under: parentNode on: html
	html
		unorderedList: [ (nodes asSortedCollection: [  :a :b | a name < b name])
				do: [ :each | 
					html
						listItem: [ html anchor
								callback: [ self editNode: each ];
								with: each name.
							html space.
							self renderPrioritiesFor: each under: parentNode on: html.
							each nodes ifNotEmpty: [ self renderPrioritiesForNodes: each nodes under: each on: html ] ] ].
			parentNode = node
				ifTrue: [ html
						listItem: [ html anchor
								callback: [ self newNode ];
								with: 'New ...' ] ] ]