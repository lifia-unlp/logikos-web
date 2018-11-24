rendering
renderMainContentOn: html
	self renderEditFormOn: html.
	self renderCriteriaOn: html.
	self model nodes size > 1
		ifTrue: [ html heading
				level: 4;
				with: 'Preferences'.
			self renderPreferenceJudgmentsIn: self model on: html ]