baseline
startServer
	ZnZincServerAdaptor startOn: 8080.
	WAAdmin register: LogikosAPI at: 'logikos-api'.
	(WAAdmin register: LogikosIndexComponent asApplicationAt: 'logikos')
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary;
		sessionClass: LogikosSession.
	WAAdmin defaultDispatcher defaultName: 'logikos'.
	LogikosApplicationModel fuelIn