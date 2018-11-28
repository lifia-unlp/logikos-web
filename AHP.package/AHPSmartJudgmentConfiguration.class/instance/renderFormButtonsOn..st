rendering
renderFormButtonsOn: html
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