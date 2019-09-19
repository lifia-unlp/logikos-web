hooks
renderButtonsOn: html
	html paragraph
		style: 'padding-top: 10px;';
		with: [ html anchor
				callback: [ self cancel ];
				with: [ html tbsButton
						beDefault;
						beExtraSmall;
						with: 'Cancel' ].
			html space.
			html anchor
				callback: [ self accept ];
				with: [ html tbsButton
						beDefault;
						beExtraSmall;
						with: 'Accept' ] ]