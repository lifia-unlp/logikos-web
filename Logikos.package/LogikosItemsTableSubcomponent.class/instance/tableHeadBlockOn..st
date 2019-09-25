rendering
tableHeadBlockOn: html
	^ [ self properties
		do: [ :prop | 
			html tableHeading
				with: [ html text: prop.
					cleaningEnabledForColumn = prop
						ifFalse: [ html space.
							html anchor
								callback: [ cleaningEnabledForColumn := prop ];
								with: [ html tbsGlyphIcon iconPencil ] ]
						ifTrue: [ html break.
							html tbsButton
								beDefault;
								beExtraSmall;
								callback: [ cleaningEnabledForColumn := nil ];
								with: 'confirm'.
							html space.
							html tbsButton
								beDefault;
								beExtraSmall;
								callback: [ cleaningEnabledForColumn := nil ];
								with: 'cancel' ] ] ].
	html tableHeading: '' ]