initialization
initialize
	super initialize.
	returnButtonMode := #logout.
	itemsTableSubcomponent := LogikosItemsTableSubcomponent new
		model: self session;
		yourself.
	templatesTableSubcomponent := LogikosTemplatesTableSubcomponent new
		model: self session;
		yourself.
	selectedTab := #renderItemsTabOn:.
	profileEditor := LogikosDecisionProfileEditorComponent new.
	decisionPlayground := LogikosDecisionPlaygroundComponent new
		allowsNew: false;
		yourself.
	showExpertOptions := false