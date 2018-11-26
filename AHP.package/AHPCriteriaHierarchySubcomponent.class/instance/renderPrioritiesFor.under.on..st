rendering
renderPrioritiesFor: aNode under: parentNode on: html

	html
		text: '(';
		strong: 'LP:';
		space;
		text: ((parentNode localPriorityFor: aNode) round: 3) printString;
		text: ' - ';
		strong: 'OP:';
		space;
		text: ((parentNode overallPriorityFor: aNode) round: 3) printString;
		text: ')'