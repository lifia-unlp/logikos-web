hooks
grantAccessOnValidCode
	self session
		applicationModel: LogikosApplicationModel singleton;
		accessCode: accessCode.
	self show: self homeComponent.
	accessCode := ''