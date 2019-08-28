rendering
renderOverallPriorityFor: aNode on: html
	html
		text: '(Overal preference:';
		space;
		text: (aNode overallPriority round: 3) printString;
		text: ')'