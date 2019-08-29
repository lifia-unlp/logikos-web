private
localPriorityStringFor: each
	^ '('
		, ((selectedLeafNode localPriorityFor: each) round: 3) printString
		, ')'