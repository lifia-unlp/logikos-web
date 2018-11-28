initialization
prepareSelectedStrategy

	| currentStrategy |
	availableStrategies := (SmartJudgmentStrategy allSubclasses collect: [ :each | each new ])
		asSortedCollection: [ :a :b | a name < b name ].
	self model smartJudgementStrategy
		ifNotNil: [ currentStrategy := self model smartJudgementStrategy copy.
			availableStrategies := availableStrategies reject: [ :each | each class == currentStrategy class ].
			availableStrategies add: currentStrategy ].
	self selectStrategy: currentStrategy