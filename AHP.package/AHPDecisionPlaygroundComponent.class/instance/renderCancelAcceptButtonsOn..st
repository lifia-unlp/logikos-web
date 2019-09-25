rendering
renderCancelAcceptButtonsOn: html
	html anchor
		callback: [ self answer: nil ];
		with: [ html tbsButton
				bePrimary;
				with: 'back' ]