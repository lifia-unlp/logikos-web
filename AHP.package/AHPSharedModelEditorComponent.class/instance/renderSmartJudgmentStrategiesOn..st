rendering
renderSmartJudgmentStrategiesOn: html
	| tangibleCriteria |
	html break.
	html paragraph: [ html label: 'Smart judgment strategies' ].
	self model smartJudgmentStrategies.
	tangibleCriteria := self model goalModel leafNodes select: [ :each | each isTangible ].
	html
		unorderedList: [ tangibleCriteria
				do: [ :each | html listItem: [ self renderSmartJudgementStrategyFor: each on: html ] ] ]