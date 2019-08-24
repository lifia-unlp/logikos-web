rendering
renderSmartJudgmentStrategiesOn: html
	| tangibleCriteria |
	html break.
	html paragraph: [ html label: 'Smart judgment strategies' ].
	tangibleCriteria := (self model goalModel leafNodes select: [ :each | each isTangible ])
		asSortedCollection: [ :a :b | a name < b name ].
	html
		unorderedList: [ tangibleCriteria do: [ :each | html listItem: [ self renderSmartJudgementStrategyFor: each on: html ] ] ]