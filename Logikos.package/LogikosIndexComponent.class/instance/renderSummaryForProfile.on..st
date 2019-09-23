rendering-profiles
renderSummaryForProfile: aDecisionProfile on: html
	(aDecisionProfile localPriorities associations
		asSortedCollection: [ :earlier :later | earlier value > later value ])
		do: [ :ass | 
			html
				text: ass key name , ' (' , (ass value * 100) truncated printString , '%'.
			ass key smartJudgementIsAvailable
				ifTrue: [ html space.
					html tbsGlyphIcon iconFlash ].
			html text: ')' ]
		separatedBy: [ html text: ', ' ]