rendering
renderPrioritiesFor: aNode under: parentNode on: html
	displayPriorities
		ifFalse: [ ^ self ].
	html
		text: '(';
		text: 'LP:';
		space;
		text: ((parentNode localPriorityFor: aNode) round: 3) printString;
		text: ' - ';
		text: 'OP:';
		space;
		text: ((parentNode overallPriorityFor: aNode) round: 3) printString;
		text: ')'