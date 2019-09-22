testing
testCloneWithoutParentsOrAlternatives
	| name original copy subOne parent |
	name := 'original'.
	parent := AHPNode named: 'parent'.
	subOne := AHPAlternative named: 'altOne'.
	original := AHPNode named: name.
	original addParent: parent.
	original add: subOne.
	copy := original cloneWithoutParentsOrAlternatives.
	self assert: original name equals: copy name.
	self assert: copy parents isEmpty.
	self assert: copy nodes isEmpty