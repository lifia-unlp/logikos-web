rendering
renderContentOn: html
	| largeIsBetter |
	largeIsBetter := self parent selectedStrategy largerIsBetter.
	html heading
		level: 5;
		with: 'Preferences'.
	html
		unorderedList: [ html
				listItem: [ largeIsBetter
						ifTrue: [ html tbsGlyphIcon iconCheck.
							html space.
							html text: 'Larger is better' ]
						ifFalse: [ html anchor
								callback: [ self parent selectedStrategy largerIsBetter: true ];
								with: [ html tbsGlyphIcon iconUnchecked.
									html space.
									html text: 'Larger is better' ] ] ].
			html
				listItem: [ largeIsBetter not
						ifTrue: [ html tbsGlyphIcon iconCheck.
							html space.
							html text: 'Smaller is better' ]
						ifFalse: [ html anchor
								callback: [ self parent selectedStrategy largerIsBetter: false ];
								with: [ html tbsGlyphIcon iconUnchecked.
									html space.
									html text: 'Smaller is better' ] ] ] ]