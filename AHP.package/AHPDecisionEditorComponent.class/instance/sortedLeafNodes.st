rendering
sortedLeafNodes
	^ self model leafNodes asSortedCollection: [ :a :b | a name < b name ]