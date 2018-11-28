accessing
smartJudgeStrategyFor: node
	^ smartJudgmentStrategies at: node ifAbsent: [ nil ]