rendering
renderProjectsPanelOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Projects' ].
			html
				tbsPanelBody: [ html
						paragraph:
							'You use projects as workspaces to collect items, compare them, and choose among them. Only one project is active at a time (i.e., it receives items collected by you and your co-workers).'.
					html anchor
						callback: [ self call: AHPIndexComponent new ];
						with: [ html tbsButton
								beDefault;
								beSmall;
								with: 'Work with projects' ] ] ]