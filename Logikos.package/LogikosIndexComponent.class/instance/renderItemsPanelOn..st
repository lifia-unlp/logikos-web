rendering-items
renderItemsPanelOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Collected items' ].
			html
				tbsPanelBody: [ html
						paragraph: [ html
								text: 'You collect items from web sites with your (Chrome) web browser and '.
							html anchor
								url: '';
								target: '_new';
								with: 'a web extension.' ].
					self items
						ifNotEmpty: [ html paragraph: 'These are the items you have collected so far:'.
							html render: itemsTableSubcomponent.
							self renderSiteSuggestionsOn: html ]
						ifEmpty: [ html tbsAlert
								beWarning;
								with: 'Your list of items is empty. Maybe you can start collecting?'.
							self renderSiteSuggestionsForEmptyItemsListOn: html ] ] ]