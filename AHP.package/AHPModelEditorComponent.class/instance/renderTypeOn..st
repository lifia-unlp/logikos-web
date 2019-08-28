rendering
renderTypeOn: html
	html label: 'Type'.
	html
		paragraph: [ self model isTangible
				ifTrue: [ html text: 'Tangible' ]
				ifFalse: [ html text: 'Intangible' ].
			html space.
			html anchor
				callback: [ self model toggleTangible ];
				with: [ html tbsGlyphIcon iconRetweet ] ]