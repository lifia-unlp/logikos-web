rendering
renderMainContentOn: html
	html
		paragraph: [ html tbsNav
				bePills;
				with: [ html tbsNavItem
						beActiveIf: selectedTab == #renderItemsTabOn:;
						with: [ html anchor
								callback: [ selectedTab := #renderItemsTabOn: ];
								with: 'Items' ].
					html tbsNavItem
						beActiveIf: selectedTab == #renderDecisionsTabOn:;
						with: [ html anchor
								callback: [ selectedTab := #renderDecisionsTabOn: ];
								with: 'Decisions' ].
					html tbsNavItem
						beActiveIf: selectedTab == #renderTemplatesTabOn:;
						with: [ html anchor
								callback: [ selectedTab := #renderTemplatesTabOn: ];
								with: 'Templates' ].
					html tbsNavItem
						beActiveIf: selectedTab == #renderProfilesTabOn:;
						with: [ html anchor
								callback: [ selectedTab := #renderProfilesTabOn: ];
								with: 'Profiles (expert)' ] ] ].
	self perform: selectedTab with: html