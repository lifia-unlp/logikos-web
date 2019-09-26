accessing
addAlternatives: aCollectionOfNodes
	aCollectionOfNodes do: [ :each | self addAlternative: each ]