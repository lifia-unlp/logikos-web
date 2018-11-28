rendering
model: anAHPSharedModel criteria: theCriteria
	self model: anAHPSharedModel.
	criteriaToConfigure := theCriteria.
	selectedStrategy := anAHPSharedModel smartJudgeStrategyFor: theCriteria.
	availableStrategies := (SmartJudgmentStrategy allSubclasses collect: [ :each | each new ])
		asSortedCollection: [ :a :b | a class humanReadableName < b humanReadableName ].
	selectedStrategy
		ifNotNil: [ availableStrategies := availableStrategies reject: [ :each | each class == selectedStrategy class ].
			availableStrategies add: selectedStrategy ].