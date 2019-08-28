rendering
renderDetailsOn: html
	| parents |
	html heading
		level: 4;
		with: 'Details'.
	html render: inlineEditorComponentForName.
	self renderTypeOn: html.
	self model parents
		ifNotEmpty: [ parents := (self model parents collect: [ :each | each name ])
				fold: [ :a :b | a , ', ' , b ].
			html
				label: 'A sub-criteria of: ';
				paragraph: parents ]