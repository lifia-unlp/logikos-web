rendering-items
renderSiteSuggestionsOn: html
	| types |
	types := self items collect: #type as: Set.
	types size = 1
		ifFalse: [ ^ self ].
	html paragraph
		style: 'padding-top: 5px;';
		with: [ html paragraph: [ html strong: 'Suggestion: ' ].
			html
				unorderedList: [ html
						listItem: [ html
								text: 'All items you have collected so far are ';
								text: types any asZnUrl lastPathSegment;
								text: 's. These are web-site where other people have seen such items: '.
							self
								renderWebSitesIn:
									((self templates select: [ :each | each itemType = types any ])
										collect: #urlPattern)
								on: html.
							html text: '. Go there and collect some more !' ];
						listItem: [ html
								text: 'Click on the wrench icon to (manually) curate the data in each column.' ] ] ]