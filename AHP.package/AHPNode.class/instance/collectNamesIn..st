accessing
collectNamesIn: aCollection
	aCollection add: name.
	nodes do: [ :node | node collectNamesIn: aCollection ]