rendering
renderFormButtonsOn: html
	html anchor
		callback: [ self save ];
		with: [ html tbsButton
				beDefault;
				beExtraSmall;
				with: 'Save' ].
	html space.
	html anchor
		callback: [ self cancel ];
		with: [ html tbsButton
				callback: [ self cancel ];
				beDefault;
				beExtraSmall;
				with: 'Cancel' ]