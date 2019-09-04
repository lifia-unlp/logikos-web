private
localPriorityStringFor: each
	^ '('
		, ((selectedLeafNode localPriorityFor: each) * 100) truncated printString
		, '%)'