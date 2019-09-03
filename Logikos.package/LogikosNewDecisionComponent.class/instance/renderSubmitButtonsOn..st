rendering
renderSubmitButtonsOn: html
	html tbsSubmitButton
		beDefault;
		beSmall;
		callback: [ self proceed ];
		with: 'Proceed'.
	html space.
	html tbsSubmitButton
		callback: [ self cancel ];
		beDefault;
		beSmall;
		with: 'Cancel'