rendering
renderMainContentOn: html
	self renderSelectorOn: html.
	selectedStrategy
		ifNotNil: [ self renderSelectedStrategyOn: html.
			html render: configurationSubcomponent ].
	self renderFormButtonsOn: html