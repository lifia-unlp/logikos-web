rendering
renderPreferenceJudgmentBetween: firstNode and: secondNode on: html
	html text: firstNode name.
	html space.
	(1 to: 9) reversed do: [ :i | 
		(self model compare: firstNode to: secondNode) = i
			ifTrue: [ html text: i printString ]
			ifFalse: [ html anchor
					callback: [ self model compare: firstNode to: secondNode by: i ];
					with: i printString ].
		html space ].
	2 to: 9 do: [ :i | 
		(self model compare: secondNode to: firstNode) = i
			ifTrue: [ html text: i printString ]
			ifFalse: [ html anchor
					callback: [ self model compare: secondNode to: firstNode by: i ];
					with: i printString ].
		html space ].
	html text: secondNode name