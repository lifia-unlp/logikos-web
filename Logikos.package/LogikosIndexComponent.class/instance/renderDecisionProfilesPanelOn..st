rendering
renderDecisionProfilesPanelOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Decision profiles' ].
			html
				tbsPanelBody: [ html
						paragraph:
							'Decision profiles are reusable strategies to compare items considering multiple dimensions at once. These are the available profiles:'.
					html
						unorderedList: [ LogikosApplicationModel singleton decisionProfiles
								do: [ :profile | 
									html
										listItem: [ html text: profile title.
											html space.
											html anchor
												callback: [ self editDecisionProfile: profile ];
												with: [ html tbsGlyphIcon iconPencil ] ] ].
							html anchor
								callback: [ self addNewDecisionProfile ];
								with: 'New...' ] ] ]