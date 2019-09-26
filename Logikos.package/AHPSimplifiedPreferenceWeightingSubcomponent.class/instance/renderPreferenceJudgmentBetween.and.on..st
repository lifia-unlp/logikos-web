rendering
renderPreferenceJudgmentBetween: firstNode and: secondNode on: html
	(self
		isRedundant: (self labelForNode: firstNode) -> (self labelForNode: secondNode))
		ifTrue: [ ^ self ].
	uniqueComparisons
		add: (self labelForNode: firstNode) -> (self labelForNode: secondNode);
		add: (self labelForNode: secondNode) -> (self labelForNode: firstNode).
	super
		renderPreferenceJudgmentBetween: firstNode
		and: secondNode
		on: html