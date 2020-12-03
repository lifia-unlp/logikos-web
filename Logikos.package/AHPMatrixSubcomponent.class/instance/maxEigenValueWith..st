rendering
maxEigenValueWith: dhbMatrix
	| finder eigenvalue |
	finder := DhbLargestEigenValueFinder matrix: dhbMatrix.
	finder desiredPrecision: 1.0e-8.
	eigenvalue := finder evaluate.
	^ eigenvalue