judgment
smartJudge: aModel
	| nodes |
	nodes := aModel nodes.
	1 to: nodes size do: [ :i | 
		i + 1 to: nodes size do: [ :j | 
			aModel
				compare: (nodes at: i)
				to: (nodes at: j)
				by:
					(self
						compareValue: (self getValueFor: (nodes at: i))
						toValue: (self getValueFor: (nodes at: j))) ] ]