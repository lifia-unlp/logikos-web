rendering
renderMainContentOn: html
	html
		paragraph: [ html tbsNav
				bePills;
				with: [ html tbsNavItem
						beActiveIf: (selectedTab ==  #renderItemsAndDecisionsTabOn: );
						with: [ html anchor
								callback: [ selectedTab := #renderItemsAndDecisionsTabOn:  ];
								with: 'Items and decisions' ].
					html tbsNavItem
						beActiveIf: (selectedTab ==  #renderTemplatesAndProfilesTabOn: );
						with: [ html anchor
								callback: [ selectedTab := #renderTemplatesAndProfilesTabOn:  ];
								with: 'Templates and Profiles' ] ] ].
	self perform: selectedTab with: html