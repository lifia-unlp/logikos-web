testing
smartJudgementIsAvailable
	smartJudgementStrategy
		ifNotNil: [ ^ smartJudgementStrategy isAvailableFor: self propertyValues ].
	^ false