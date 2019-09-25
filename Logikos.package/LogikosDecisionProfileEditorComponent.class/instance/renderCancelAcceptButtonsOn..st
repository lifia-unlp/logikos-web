hooks
renderCancelAcceptButtonsOn: html
	html anchor
		callback: [ self cancel ];
		with: [ html tbsButton
				beDefault;
				with: 'Cancel' ].
	html space.
	html anchor
		callback: [ self accept ];
		with: [ html tbsButton
				bePrimary;
				with: 'Accept' ]