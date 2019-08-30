rendering
tableHeadBlockOn: html
	^ [ self properties
		do: [ :prop | 
			html tableHeading
				with: [ html text: prop.
					html space.
					cleaningEnabledForColumn = prop
						ifFalse: [ html anchor
								callback: [ cleaningEnabledForColumn := prop ];
								with: [ html tbsGlyphIcon iconWrench ] ]
						ifTrue: [ html anchor
								callback: [ cleaningEnabledForColumn := nil ];
								with: [ html tbsGlyphIcon iconOkCircle ].
							html space.
							html anchor
								callback: [ cleaningEnabledForColumn := nil ];
								with: [ html tbsGlyphIcon iconRemoveCircle ] ] ] ].
	html tableHeading: '' ]