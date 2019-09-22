rendering
renderFormButtonsOn: html
	html anchor
		callback: [ self cancel ];
		with: [ html tbsButton
				beDefault;
				beExtraSmall;
				with: 'Cancel' ].
	html space.
	html anchor
		callback: [ self save ];
		with: [ html tbsButton
				beDefault;
				beExtraSmall;
				with: 'Accept' ]