callbacks
selectStrategy: each
	selectedStrategy := each.
	selectedStrategy class == CompleteDomainPriorizationSJS
		ifTrue: [ configurationSubcomponent := CompleteDomainPriorizationSJSConfigSubcomponent parent: self ].
	selectedStrategy class == NormalizedDifferenceSJS
		ifTrue: [ configurationSubcomponent := nil ]