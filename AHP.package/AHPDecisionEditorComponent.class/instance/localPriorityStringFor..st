private
localPriorityStringFor: each
	^ ' - Local preference: ' , ((selectedLeafNode localPriorityFor: each) round: 3) printString