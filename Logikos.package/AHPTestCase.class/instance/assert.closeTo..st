asserting
assert: actualNumber closeTo: expectedNumber
	"true if the difference is less than 20% of the biggest number"

	^ self
		assert: (actualNumber closeTo: expectedNumber precision: 0.2)
		description: [ self comparingStringBetween: actualNumber and: expectedNumber ]