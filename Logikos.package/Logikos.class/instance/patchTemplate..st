accessing templates
patchTemplate: aTemplate
	(templates detect: [ :each | each id = aTemplate id ])
		patchWith: aTemplate