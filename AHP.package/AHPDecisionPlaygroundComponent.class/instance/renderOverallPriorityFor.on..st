rendering
renderOverallPriorityFor: aNode on: html
	html
		text: '(';
		text: (aNode overallPriority round: 3) printString;
		text: ')'