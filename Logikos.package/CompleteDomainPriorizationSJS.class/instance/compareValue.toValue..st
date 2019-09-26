hooks
compareValue: altOne toValue: altTwo
	^ model
		compare: (model nodeNamed: altOne)
		to: (model nodeNamed: altTwo)