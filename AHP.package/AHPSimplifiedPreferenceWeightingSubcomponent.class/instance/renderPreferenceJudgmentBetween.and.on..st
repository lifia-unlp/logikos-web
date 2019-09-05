rendering
renderPreferenceJudgmentBetween: firstNode and: secondNode on: html
	| redundant |
	(self isRedundant: firstNode -> secondNode) & hideObvious
		ifTrue: [  ].
	super
		renderPreferenceJudgmentBetween: firstNode
		and: secondNode
		on: html