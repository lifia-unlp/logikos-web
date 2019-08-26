rendering
renderItemsPanelOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Items' ].
			html
				tbsPanelBody: [ html
						paragraph: 'These are the items you collected using the available templates'.
					self renderItemsTableOn: html ] ]