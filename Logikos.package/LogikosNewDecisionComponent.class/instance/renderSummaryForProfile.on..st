rendering
renderSummaryForProfile: each on: html
	(each localPriorities associations asSortedCollection: [ :earlier : later | earlier value > later value ])
		do: [ :ass | html text: ass key name , ' (' , (ass value * 100) truncated printString, '%)' ]
		separatedBy: [ html text: ', ' ]