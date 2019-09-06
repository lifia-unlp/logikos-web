rendering hooks
renderTemplatesOn: html
	html heading
		level: 3;
		with: 'Templates'.
	html
		paragraph:
			'Each templates tells how to obtain a given type of item from a web-site'.
	html
		unorderedList: [ self session templates
				do: [ :each | self renderTemplate: each on: html ] ]