rendering
renderReturnButtonsOnNOTWORKING: html
	html span tbsPullRight
		with: [ html anchor
				callback: [ self cancel ];
				with: [ html tbsNavbarButton with: 'Cancel' ].
			html space.
			html anchor
				callback: [ self proceed ];
				with: [ html tbsNavbarButton
						onClick: 'document.forms[''theForm''].submit();';
						with: 'Proceed' ] ]