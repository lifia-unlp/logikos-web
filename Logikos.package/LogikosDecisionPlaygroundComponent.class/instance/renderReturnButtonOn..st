rendering hooks
renderReturnButtonOn: html
	html anchor
		callback: [ self show: LogikosIndexComponent new ];
		with: [ html tbsNavbarButton
				tbsPullRight;
				with: 'Back' ]