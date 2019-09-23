rendering-decisions
renderTopItemsFor: each on: html
	| alternatives |
	each hasPristineCriteria
		ifTrue: [ html tbsGlyphIcon iconQuestionSign.
			^ self ].
	alternatives := each alternatives
		asSortedCollection: [ :earlier :later | earlier overallPriority > later overallPriority ].
	html
		text:
			alternatives first name , ' ('
				, (alternatives first overallPriority * 100) truncated printString
				, '%)'