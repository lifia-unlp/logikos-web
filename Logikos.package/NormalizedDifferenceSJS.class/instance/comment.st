hooks
comment
	^ 'This strategy compares values as numbers paying attention to their magnitues and differences. '
		,
			(largerIsBetter
				ifTrue: [ 'Larger values are better' ]
				ifFalse: [ 'Smaller values are better' ])