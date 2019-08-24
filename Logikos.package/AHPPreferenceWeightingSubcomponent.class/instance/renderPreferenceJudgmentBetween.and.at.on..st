rendering
renderPreferenceJudgmentBetween: firstNode and: secondNode at: aParentNode on: html
	html text: firstNode name.
	html space.
	(1 to: 9) reversed
		do: [ :i | 
			(aParentNode compare: firstNode to: secondNode) = i
				ifTrue: [ html strong: i printString ]
				ifFalse: [ html anchor
						callback: [ aParentNode compare: firstNode to: secondNode by: i ];
						with: i printString ].
			html space ].
	2 to: 9 do: [ :i | 
		(aParentNode compare: secondNode to: firstNode) = i
			ifTrue: [ html strong: i printString ]
			ifFalse: [ html anchor
					callback: [ aParentNode compare: secondNode to: firstNode by: i ];
					with: i printString ].
		html space ].
	html text: secondNode name