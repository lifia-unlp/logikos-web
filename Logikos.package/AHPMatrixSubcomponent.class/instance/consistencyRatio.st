rendering
consistencyRatio
	| dhbMatrix maxEigenvalue n consistencyIndex randomCis |
	randomCis := #(0 0 0.58 0.9 1.12 1.24 1.32 1.41 1.45 1.49 1.51 1.48 1.56 1.57 1.59).
	dhbMatrix := self dhbMatrix.
	n := dhbMatrix numberOfRows.
	n <= 2
		ifTrue: [ ^ 0 ].
	maxEigenvalue := self maxEigenValueWith: dhbMatrix.
	consistencyIndex := (maxEigenvalue - n) / (n - 1).
	^ consistencyIndex / (randomCis at: n)