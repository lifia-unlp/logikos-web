rendering
renderPreferenceJudgmentsIn: aCluster on: html
	| nodes |
	nodes := self nodes.
	self model nodes size > 1
		ifTrue: [ 1 to: nodes size do: [ :i | 
				i + 1 to: nodes size do: [ :j | 
					html
						paragraph: [ self
								renderPreferenceJudgmentBetween: (nodes at: i)
								and: (nodes at: j)
								at: aCluster
								on: html ] ] ] ]