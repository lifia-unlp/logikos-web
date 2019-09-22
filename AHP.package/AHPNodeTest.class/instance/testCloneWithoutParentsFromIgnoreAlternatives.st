testing
testCloneWithoutParentsFromIgnoreAlternatives
	| name original copy alternative parent criteria |
	name := 'original'.
	original := AHPNode named: name.
	parent := AHPNode named: 'parent'.
	original addParent: parent.
	criteria := AHPCriteria named: 'criteria'.
	original add: criteria.
	alternative := AHPAlternative named: 'alternative'.
	criteria add: alternative.
	copy := AHPNode named: 'other'.
	copy cloneWithoutParentsFrom: original ignoreAlternatives: false.
	self assert: original name equals: copy name.
	self assert: copy parents isEmpty.
	self assert: copy allNodesDown size equals: 3.
	copy cloneWithoutParentsFrom: original ignoreAlternatives: true.
	self assert: copy allNodesDown size equals: 2