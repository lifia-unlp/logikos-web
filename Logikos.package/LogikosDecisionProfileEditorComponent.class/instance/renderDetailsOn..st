rendering
renderDetailsOn: html
	html heading
		level: 4;
		with: 'Details of this decision profile'.
	html render: inlineEditorComponentForName.
	html render: inlineEditorComponentForComments