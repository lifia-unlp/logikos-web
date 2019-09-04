rendering-items
renderSiteSuggestionsForEmptyItemsListOn: html
	| sitesByType |
	self templates ifEmpty: [ ^ self ].
	html paragraph
		style: 'padding-top: 5px;';
		with: [ html
				strong: 'Suggestion: ';
				text:
					'The following sites are known to have items you might be interested in:'.
			html
				unorderedList: [ sitesByType := self templates
						inject: Dictionary new
						into: [ :dict :each | 
							(dict
								at: each itemType asZnUrl lastPathSegment
								ifAbsentPut: [ Set new ]) add: each urlPattern.
							dict ].
					sitesByType
						keysAndValuesDo: [ :type :sites | 
							html
								listItem: [ html text: 'For ' , type , 's you can go to: '.
									self renderWebSitesIn: sites on: html ] ] ] ]