rendering
renderSelectorOn: html
	html heading
		level: 5;
		with: 'Smart judgment strategy for ' , criteriaToConfigure name.
	html
		paragraph: [ html div
				tbsDropdown: [ selectedStrategy
						ifNil: [ html tbsDropdownAnchor
								with: [ html
										text: 'Not set';
										tbsCaret ] ]
						ifNotNil: [ html tbsDropdownAnchor
								with: [ html
										text: selectedStrategy class humanReadableName;
										tbsCaret ] ].
					html
						tbsDropdownMenu: [ (availableStrategies copyWithout: selectedStrategy)
								do: [ :each | 
									html
										tbsDropdownMenuItem: [ html anchor
												callback: [ selectedStrategy := each ];
												with: each class humanReadableName ] ].
							selectedStrategy
								ifNotNil: [ html tbsDivider.
									html
										tbsDropdownMenuItem: [ html anchor
												callback: [ selectedStrategy := nil ];
												with: 'Clear' ] ] ] ] ]