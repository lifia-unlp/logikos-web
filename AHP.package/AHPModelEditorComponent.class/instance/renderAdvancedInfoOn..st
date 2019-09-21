rendering
renderAdvancedInfoOn: html
	showAdvanced
		ifTrue: [ self renderParentReferenceOn: html.
			self renderTypeOn: html.
			self model isTangible
				ifTrue: [ self renderSmartRankingOptionsOn: html ]
				ifFalse: [ self renderCriteriaOn: html.
					self model nodes size > 1
						ifTrue: [ html heading
								level: 4;
								with: 'Local preferences'.
							html render: preferencesComponent ] ] ]
		ifFalse: [ html anchor
				callback: [ showAdvanced := true ];
				title: 'Show expert options about this criteria';
				with: 'see more ...' ]