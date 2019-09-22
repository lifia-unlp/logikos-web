testing
testCloneWithoutParents
	| name original copy subOne parent |
	name := 'original'.
	parent := AHPNode named: 'parent'.
	subOne := AHPNode named: 'subOne'.
	original := AHPNode named: name.
	original addParent: parent.
	original add: subOne.
	copy := original cloneWithoutParents.
	self assert: original equals: copy.
	self deny: name == copy name.
	self assert: copy parents isEmpty.
	self deny: original nodes == copy nodes.
	self deny: original nodes first == copy nodes first.
