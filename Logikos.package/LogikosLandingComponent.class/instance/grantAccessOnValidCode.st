hooks
grantAccessOnValidCode
	self session
		applicationModel: Logikos singleton;
		accessCode: accessCode.
	populateWithDemoData
		ifTrue: [ self session populateAsDemo ].
	self show: self homeComponent.
	accessCode := ''