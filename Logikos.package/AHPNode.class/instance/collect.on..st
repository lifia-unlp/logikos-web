iterating
collect: aBlock on: aCollection
	aCollection add: (aBlock value: self).
	nodes do: [ :each | each collect: aBlock on: aCollection ]