rendering
renderMainContentOn: html
	self renderSelectorOn: html.
	self renderSelectedStrategyOn: html.
	self renderConfigurationFormOn: html.
	html
		tbsForm: [ html tbsButton
				callback: [ self save ];
				beSmall;
				with: 'Save'.
			html space.
			^ html tbsButton
				callback: [ self cancel ];
				beSmall;
				with: 'Cancel' ]