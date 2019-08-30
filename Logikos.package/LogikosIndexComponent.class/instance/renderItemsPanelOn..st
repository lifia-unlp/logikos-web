rendering
renderItemsPanelOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Collected items' ].
			html
				tbsPanelBody: [ html
						paragraph: [ html
								text:
									'You collect items from web sites with your (Chrome) web browser and '.
							html anchor
								url: '';
								target: '_new';
								with: 'a web extension.'.
							html text: ' These are the items you have collected so far:' ].
					self renderItemsTableOn: html ] ]