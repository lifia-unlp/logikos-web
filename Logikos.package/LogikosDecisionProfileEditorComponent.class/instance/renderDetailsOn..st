rendering
renderDetailsOn: html
	html heading
		level: 4;
		with: 'Details'.
	html render: inlineEditorComponentForName.
	html render: inlineEditorComponentForComments