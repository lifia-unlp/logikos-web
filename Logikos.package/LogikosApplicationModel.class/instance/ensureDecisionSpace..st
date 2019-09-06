accessing
ensureDecisionSpace: aSpaceName
	(decisions includesKey: aSpaceName)
		ifFalse: [ decisions at: aSpaceName put: OrderedCollection new ]