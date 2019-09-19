hooks
renderMainContentOn: html
	self renderDetailsOn: html.
	html heading
		level: 4;
		with: 'Criteria'.
	self renderCriteriaOn: html.
	self model nodes size > 1
		ifTrue: [ html heading
				level: 4;
				with: 'Local preferences'.
			html render: preferencesComponent ].

	self renderButtonsOn: html