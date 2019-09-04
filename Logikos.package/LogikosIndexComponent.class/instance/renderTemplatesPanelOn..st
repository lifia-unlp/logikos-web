rendering
renderTemplatesPanelOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Templates' ].
			html
				tbsPanelBody: [ html
						paragraph: [ html
								text:
									'Templates help you collect information (items) from web-sites. You create new templates from your (Chrome) web-browser using '.
							html anchor
								url: '';
								target: '_new';
								with: 'a web extension' ].
					self templates
						ifEmpty: [ html tbsAlert
								beWarning;
								with: 'There aren''t any templates available. Maybe you could create one?' ]
						ifNotEmpty: [ html render: templatesTableSubcomponent ] ] ]