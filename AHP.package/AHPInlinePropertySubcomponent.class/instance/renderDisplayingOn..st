rendering
renderDisplayingOn: html
	html label: label.
	html space.
	html anchor
		callback: [ self edit ];
		with: [ html tbsGlyphIcon iconPencil ].
	html paragraph with: [ html text: (object perform: selector) ]