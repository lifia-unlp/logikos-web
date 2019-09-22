rendering
renderReturnButtonOn: html
	html anchor
		callback: [ self cancel ];
		with: [ html tbsSubmitButton
				tbsPullRight;
				attributeAt: 'type' put: 'submit';
				with: 'Cancel' ].
	html space.
	html anchor
		callback: [ self accept ];
		with: [ html tbsSubmitButton
				tbsPullRight;
				with: 'Accept' ]