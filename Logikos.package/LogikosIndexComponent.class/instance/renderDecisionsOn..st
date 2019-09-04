rendering
renderDecisionsOn: html
	| decisions |
	decisions := LogikosApplicationModel singleton decisions.
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Decisions' ].
			html
				tbsPanelBody: [ decisions
						ifNotEmpty: [ html paragraph: 'These are the decisions you are exploring' ].
					html
						unorderedList: [ decisions
								do: [ :decision | 
									html
										listItem: [ html text: decision name.
											html space.
											html anchor
												callback: [ self editDecision: decision ];
												with: [ html tbsGlyphIcon iconPencil ].
											html space.
											html anchor
												callback: [ self removeDecision: decision ];
												with: [ html tbsGlyphIcon iconTrash ] ] ] ].
					html anchor
						callback: [ self newDecision ];
						with: 'Make a new decision ...' ] ]