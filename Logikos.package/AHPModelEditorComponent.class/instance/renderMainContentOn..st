rendering
renderMainContentOn: html
	self renderDetailsOn: html.
	self renderCriteriaOn: html.
	self model nodes size > 1
		ifTrue: [ html heading
				level: 4;
				with: 'Local preferences'.
			html render: preferencesComponent ]