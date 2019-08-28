rendering
renderDisplayingOn: html
	html label: label.
	html paragraph
		with: [ html text: (object perform: selector).
			html space.
			html anchor
				callback: [ self edit ];
				with: [ html tbsGlyphIcon iconPencil ] ]