rendering-decisions
renderDecisionsOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Decisions' ].
			html
				tbsPanelBody: [ self renderDecisionsAsTableOn: html.
					html anchor
						callback: [ self newDecision ];
						with: [ html tbsButton
								beDefault;
								beExtraSmall;
								with: 'New' ] ] ]