rendering
renderContentOn: html
	| nodes |
	nodes := node nodes.
	nodes size > 1
		ifTrue: [ 1 to: nodes size do: [ :i | 
				i + 1 to: nodes size do: [ :j | 
					html
						paragraph: [ self
								renderPreferenceJudgmentBetween: (nodes at: i)
								and: (nodes at: j)
								on: html ] ] ] ]
