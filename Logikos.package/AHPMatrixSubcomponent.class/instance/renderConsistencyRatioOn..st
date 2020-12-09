rendering
renderConsistencyRatioOn: html
	| ratio p |
	ratio := self consistencyRatio round: 2.
	p := html paragraph.
	ratio > 0.1
		ifTrue: [ p style: ' color: red;font-weight: bold;' ].
	p
		with: [ html text: 'CR: ' , (self consistencyRatio round: 2) printString ]