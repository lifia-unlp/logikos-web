private
comparisonMatrix
	| comparisonMatrix |
	comparisonMatrix := Matrix rows: nodes size columns: nodes size.
	comparisonMatrix
		indicesDo: [ :row :column | 
			comparisonMatrix
				at: row
				at: column
				put: (self compare: (nodes at: row) to: (nodes at: column)) ].
	^ comparisonMatrix