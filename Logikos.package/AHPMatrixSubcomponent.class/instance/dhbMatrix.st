rendering
dhbMatrix
	| dhbMatrix rows matrix |
	matrix := node comparisonMatrix.
	rows := (1 to: matrix rowCount)
		collect: [ :row | DhbVector withAll: (matrix atRow: row) ].
	dhbMatrix := DhbMatrix rows: rows.
	^ dhbMatrix