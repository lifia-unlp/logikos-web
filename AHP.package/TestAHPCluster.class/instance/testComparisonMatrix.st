testing
testComparisonMatrix
	| matrix |
	matrix := cluster normalizedMatrix.
	self assert: ((matrix at: 1 at: 1) truncateTo: 0.001) closeTo: 0.677.
	self assert: ((matrix at: 1 at: 2) truncateTo: 0.001) closeTo: 0.636.
	self assert: ((matrix at: 1 at: 3) truncateTo: 0.001) closeTo: 0.692.
	self assert: ((matrix at: 2 at: 1) truncateTo: 0.001) closeTo: 0.096.
	self assert: ((matrix at: 2 at: 2) truncateTo: 0.001) closeTo: 0.09.
	self assert: ((matrix at: 2 at: 3) truncateTo: 0.001) closeTo: 0.076.
	self assert: ((matrix at: 3 at: 1) truncateTo: 0.001) closeTo: 0.225.
	self assert: ((matrix at: 3 at: 2) truncateTo: 0.001) closeTo: 0.272.
	self assert: ((matrix at: 3 at: 3) truncateTo: 0.001) closeTo: 0.23