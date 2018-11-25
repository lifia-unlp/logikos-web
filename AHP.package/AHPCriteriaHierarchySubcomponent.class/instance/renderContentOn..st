rendering
renderContentOn: html
	self renderPrioritiesForNodes: node nodes under: node on: html.
	html anchor
		callback: [ self newNode ];
		with: 'New ...'