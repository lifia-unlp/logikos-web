rendering-profiles
renderProfileSuggestionsOn: html
	| types |
	types := self items collect: #type as: Set.
	types size = 1
		ifFalse: [ ^ self ].
	html paragraph
		style: 'padding-top: 5px;';
		with: [ html paragraph: [ html strong: 'Suggestions: ' ].
			html
				unorderedList: [ html
						listItem:
							'Decision profiles represent reusable strategies to rank items. You can add or remove criteria, and change how important each criteria is for a decision.'.
					html
						listItem: [ html
								text:
									'Percentages indicate how important a criteria is for a given profile. The flasg icon'.
							html tbsGlyphIcon iconFlash.
							html
								text:
									' indicates that some smart help will be provided when comparing items.' ].
					html
						listItem:
							'Use the ''New'' buton to create a new decision profile based on the items in your dashboard.' ] ]