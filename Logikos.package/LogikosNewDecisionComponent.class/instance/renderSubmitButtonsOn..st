rendering
renderSubmitButtonsOn: html
	html tbsSubmitButton
		beDefault;
		beSmall;
		callback: [ self cancel ];
		with: 'Cancel'.
	html space.
	html tbsSubmitButton
		callback: [ self proceed ];
		bePrimary;
		beSmall;
		with: 'Proceed'