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
							'Templates help you collect information items from web-sites. You create new templates from your web-browser. The following templates have so far been defined. Click the pencil to know more and edit'.
					html
						unorderedList: [ LogikosApplicationModel singleton templates
								do: [ :each | 
									html
										listItem: [ html text: each.
											html space.
											html anchor
												callback: [  ];
												with: [ html tbsGlyphIcon iconPencil ] ] ] ] ] ]