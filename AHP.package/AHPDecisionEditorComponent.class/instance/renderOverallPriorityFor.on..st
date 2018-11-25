rendering
renderOverallPriorityFor: aNode on: html
	html
		text: '(';
		strong: 'OP:';
		space;
		text: (aNode overallPriority round: 3) printString;
		text: ')'