testing
testPendingComparisons
	| newCluster newCost newComfort newSafety |
	newCluster := AHPNode new.
	newCost := AHPNode named: 'Cost'.
	newComfort := AHPNode named: 'Comfort'.
	newSafety := AHPNode named: 'Safety'.
	self assert: newCluster pendingComparisons isEmpty.
	newCluster add: newCost.
	self assert: newCluster pendingComparisons isEmpty.
	newCluster add: newComfort.
	self assert: newCluster pendingComparisons size equals: 0.
	newCluster add: newSafety.
	self assert: newCluster pendingComparisons size equals: 0.
	newCluster compare: newCost to: newComfort by: 7.
	self assert: newCluster pendingComparisons size equals: 0.
	newCluster compare: newCost to: newSafety by: 3.
	self assert: newCluster pendingComparisons size equals: 0