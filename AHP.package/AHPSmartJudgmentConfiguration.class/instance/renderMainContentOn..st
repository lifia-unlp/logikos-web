rendering
renderMainContentOn: html
	html heading
		level: 5;
		with: 'Smart judgement strategy for ' , self model name.
	self renderSelectorOn: html.
	selectedStrategy ifNotNil: [ html render: configurationSubcomponent ].
	self renderFormButtonsOn: html