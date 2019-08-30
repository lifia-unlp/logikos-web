initialization
initialize
	super initialize.
	itemsTableSubcomponent := LogikosItemsTableSubcomponent new
		model: LogikosApplicationModel singleton;
		yourself