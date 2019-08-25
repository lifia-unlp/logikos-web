accessing
templatesMatching: aUrl
	^ templates
		select: [ :each | each urlPattern asUrl host = aUrl asUrl host ]