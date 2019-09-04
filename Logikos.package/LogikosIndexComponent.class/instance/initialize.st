initialization
initialize
	super initialize.
	itemsTableSubcomponent := LogikosItemsTableSubcomponent new
		model: LogikosApplicationModel singleton;
		yourself.
	templatesTableSubcomponent := LogikosTemplatesTableSubcomponent new
		model: LogikosApplicationModel singleton;
		yourself.
	selectedTab := #renderItemsTabOn:.
	profileEditor := LogikosDecisionProfileEditorComponent new.
	decisionPlayground := LogikosDecisionPlaygroundComponent new
		allowsNew: false;
		yourself