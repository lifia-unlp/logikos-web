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
							'Decision profiles are reusable strategies to compare items considering multiple dimensions at once. You define profiles to use them in projects'.
					html anchor
						callback: [ self call: AHPIndexComponent new ];
						with: [ html tbsButton
								beDefault;
								beSmall;
								with: 'Work with profiles' ] ] ]