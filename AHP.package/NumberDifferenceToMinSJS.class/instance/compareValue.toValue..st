hooks
compareValue: aNumber toValue: anotherNumber
	| rating |
	rating := ((aNumber - anotherNumber) abs / (aNumber min: anotherNumber) * 10 + 1) rounded
		min: 9.
	largerIsBetter & (aNumber < anotherNumber)
		| (largerIsBetter not & (aNumber > anotherNumber))
		ifTrue: [ rating := 1 / rating ].
	^ rating