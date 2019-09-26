rendering
renderAdvancedInfoOn: html
	self renderTypeOn: html.
	self model isTangible
		ifTrue: [ self renderValuesInDashboardOn: html.
			self renderSmartRankingOptionsOn: html ]
		ifFalse: [ self renderCriteriaOn: html.
			self model nodes size > 1
				ifTrue: [ html heading
						level: 4;
						with: 'Local preferences'.
					html render: preferencesComponent ] ]