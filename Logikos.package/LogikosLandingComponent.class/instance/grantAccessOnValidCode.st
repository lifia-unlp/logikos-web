hooks
grantAccessOnValidCode
	accessCode notEmpty
		ifTrue: [ self session
				applicationModel: LogikosApplicationModel singleton;
				accessCode: accessCode.
			self show: self homeComponent ]
		ifFalse: [ self errorMessage: 'Invalid access code' ].
	accessCode := ''.