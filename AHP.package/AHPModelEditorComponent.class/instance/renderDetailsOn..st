rendering
renderDetailsOn: html
	html heading
		level: 4;
		with: 'Details'.
	html render: inlineEditorComponentForName.
	self renderParentReferenceOn: html.
	self renderTypeOn: html