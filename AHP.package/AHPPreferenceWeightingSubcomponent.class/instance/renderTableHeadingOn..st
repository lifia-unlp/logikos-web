rendering
renderTableHeadingOn: html
	| parentName |
	parentName := parentNode isCriteria
		ifTrue: [ parentNode name ]
		ifFalse: [ '' ].
	html tableHeading: parentName.
	html tableHeading
		style: 'text-align: center;';
		with: [ html
				text:
					'Move the checkmark closer to what you think is more important or better.'.
			html space.
			self smartJudgementIsAvailable
				ifTrue: [ html anchor
						callback: [ self autorank ];
						title: 'Apply smart ranking!';
						with: [ html tbsGlyphIcon iconFlash ] ] ].
	html tableHeading
		style: 'text-align: right;';
		with: parentName