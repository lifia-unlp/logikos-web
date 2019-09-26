rendering
renderMainContentOn: html
	html heading
		level: 4;
		with: [ html text: 'Smart judgement configuration for: ' , self model name.
			html space.
			html tbsGlyphIcon iconFlash ].
	self renderPossibleValuesFromDashBoardOn: html.
	self renderSelectorOn: html.
	selectedStrategy ifNotNil: [ html render: configurationSubcomponent ].
	self renderFormButtonsOn: html