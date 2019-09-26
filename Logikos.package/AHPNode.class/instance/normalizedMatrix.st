private
normalizedMatrix
	| comparisonMatrix sums |
	comparisonMatrix := self comparisonMatrix.
	sums := (1 to: nodes size) collect: [ :col | (comparisonMatrix atColumn: col) sum asFloat ].
	comparisonMatrix
		indicesDo: [ :row :col | comparisonMatrix at: row at: col put: (comparisonMatrix at: row at: col) / (sums at: col) ].
	^ comparisonMatrix