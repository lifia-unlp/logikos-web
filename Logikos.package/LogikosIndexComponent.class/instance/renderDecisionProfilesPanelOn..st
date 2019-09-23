rendering-profiles
renderDecisionProfilesPanelOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Decision profiles' ].
			html
				tbsPanelBody: [ self renderProfilesTableOn: html.
					html
						paragraph: [ html anchor
								callback: [ self addNewDecisionProfileFromItems ];
								with: [ html tbsButton
										beDefault;
										beExtraSmall;
										with: 'New' ] ].
					self renderProfileSuggestionsOn: html ] ]