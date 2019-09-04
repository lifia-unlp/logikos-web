rendering
renderOverallPriorityFor: aNode on: html
	html
		text: '(';
		text: (aNode overallPriority * 100) truncated printString;
		text: '%)'