testing
testOverallPrioritiesForAlternatives
	self assert: carOne overallPriority closeTo: 0.33.
	self assert: carTwo overallPriority closeTo: 0.51.
	self assert: carThree overallPriority closeTo: 0.14