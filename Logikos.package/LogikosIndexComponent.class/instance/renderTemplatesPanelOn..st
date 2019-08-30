rendering
renderTemplatesPanelOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Templates' ].
			html
				tbsPanelBody: [ html
						paragraph:
							'Templates help you collect information items from web-sites. You create new templates from your web-browser'.
					html
						unorderedList: [ LogikosApplicationModel singleton templates
								do:
									[ :each | html listItem: [ html text: each ] ] ] ] ]