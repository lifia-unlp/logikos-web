converting
asDictionaryWithPrioritiesIn: aModel
	| dict |
	dict := super asDictionaryWithPrioritiesIn: aModel.
	smartJudgementStrategy ifNotNil: [ dict at: 'smartJudgementStrategy' put: smartJudgementStrategy asPropertyDictionary ].
	^ dict