rendering
renderPrioritiesFor: aNode under: parentNode on: html
	html
		text: '(';
		strong: 'OP:';
		space;
		text: ((parentNode overallPriorityFor: aNode) round: 3) printString;
		text: ')'