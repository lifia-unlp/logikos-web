hooks
renderReturnButtonOn: html
	html span tbsPullRight
		with: [ html anchor
				callback: [ self cancel ];
				with: [ html tbsNavbarButton with: 'Cancel' ].
			html space.
			html anchor
				callback: [ self accept ];
				with: [ html tbsNavbarButton with: 'Accept' ] ]