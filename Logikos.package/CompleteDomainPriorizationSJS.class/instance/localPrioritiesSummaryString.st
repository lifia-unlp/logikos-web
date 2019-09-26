utility
localPrioritiesSummaryString
	| stream |
	stream := String new writeStream.
	(model localPriorities associations
		asSortedCollection: [ :earlier :later | earlier value > later value ])
		do: [ :each | 
			stream
				nextPutAll: each key name , ' (' , (each value * 100) truncated printString , '%)' ]
		separatedBy: [ stream nextPutAll: ', ' ].
	^ stream contents