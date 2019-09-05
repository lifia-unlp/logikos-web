rendering
renderTableHeadingOn: html
	html tableHeading: parentNode name.
	html tableHeading
		style: 'text-align: center;';
		with: [ html
				text:
					'Move the checkmark closer to what you think is more important or better.'.
			html space.
			self smartJudgementIsAvailable
				ifTrue: [ html anchor
						callback: [ self autorank ];
						title: 'Click for a suggestion!';
						with: [ html tbsGlyphIcon iconExclamationSign ] ] ].
	html tableHeading
		style: 'text-align: right;';
		with: parentNode name