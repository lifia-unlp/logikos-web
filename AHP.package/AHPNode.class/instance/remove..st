accessing
remove: anAHPNode
	nodes remove: anAHPNode.
	comparisons
		removeAll: (comparisons select: [ :each | each involves: anAHPNode ])