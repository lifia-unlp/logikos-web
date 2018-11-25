rendering
renderPrioritiesForNodes: nodes under: parentNode on: html
	html
		unorderedList: [ nodes
				do: [ :each | 
					html
						listItem: [ html anchor
								callback: [ self editNode: each ];
								with: each name.
							html space.
							self renderPrioritiesFor: each under: parentNode on: html.
							each nodes ifNotEmpty: [ self renderPrioritiesForNodes: each nodes under: each on: html ] ] ] ]