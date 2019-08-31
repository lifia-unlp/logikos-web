callbacks
selectStrategy: each
	selectedStrategy := each.
	selectedStrategy class == CompleteDomainPriorizationSJS
		ifTrue:
			[ configurationSubcomponent := CompleteDomainPriorizationSJSConfigSubcomponent
				parent: self ].
	selectedStrategy class == NormalizedDifferenceSJS
		ifTrue:
			[ configurationSubcomponent := NormalizedDifferenceSJSConfigSubcomponent
				parent: self ].
	selectedStrategy
		ifNotNil: [ selectedStrategy
				valueBlock: [ :object | object at: model name ifAbsent: [ nil ] ] ]