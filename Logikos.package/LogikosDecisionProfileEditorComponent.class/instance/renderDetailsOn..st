rendering
renderDetailsOn: html
	html heading
		level: 4;
		with: 'Details of this decision profile'.
	html
		tbsRow: [ html
				tbsColumn: [ html render: inlineEditorComponentForName.
					html render: inlineEditorComponentForComments ]
				mediumSize: 6.
			html
				tbsColumn: [ html render: inlineEditorComponentForUrl ]
				mediumSize: 6 ]