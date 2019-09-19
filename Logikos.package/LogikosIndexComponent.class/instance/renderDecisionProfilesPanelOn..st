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
						unorderedList: [ self session decisionProfiles
								do: [ :profile | 
									html
										listItem: [ html text: profile name.
											html space.
											html anchor
												callback: [ self editDecisionProfile: profile ];
												with: [ html tbsGlyphIcon iconPencil ].
											html space.
											html anchor
												callback: [ self removeDecisionProfile: profile ];
												with: [ html tbsGlyphIcon iconTrash ] ] ] ].
					html
						paragraph: [ html anchor
								callback: [ self addNewDecisionProfileFromItems ];
								with: [ html tbsButton
										beDefault;
										beExtraSmall;
										with: 'New' ] ] ] ]