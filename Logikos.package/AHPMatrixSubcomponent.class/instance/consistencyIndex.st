rendering
consistencyIndex
	| dhbMatrix maxEigenvalue n consistencyIndex |
	dhbMatrix := self dhbMatrix.
	n := dhbMatrix numberOfRows.
	maxEigenvalue := self maxEigenValueWith: dhbMatrix.
	consistencyIndex := (maxEigenvalue - n) / (n - 1)