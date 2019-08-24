rendering
renderSelectorOn: html
	html heading
		level: 5;
		with: 'Smart judgment strategy for ' , self model name.
	html
		paragraph: [ html div
				tbsDropdown: [ selectedStrategy
						ifNil: [ html tbsDropdownAnchor
								with: [ html
										text: 'Not set';
										tbsCaret ] ]
						ifNotNil: [ html tbsDropdownAnchor
								with: [ html
										text: selectedStrategy name;
										tbsCaret ] ].
					html
						tbsDropdownMenu: [ (availableStrategies copyWithout: selectedStrategy)
								do: [ :each | 
									html
										tbsDropdownMenuItem: [ html anchor
												callback: [ self selectStrategy: each ];
												with: each name ] ].
							selectedStrategy
								ifNotNil: [ html tbsDivider.
									html
										tbsDropdownMenuItem: [ html anchor
												callback: [ selectedStrategy := nil ];
												with: 'Clear' ] ] ] ] ]