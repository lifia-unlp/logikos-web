cloning
cloneWithoutParents
	| dict myCopy |
	dict := IdentityDictionary new.
	myCopy := self class named: name copy.
	nodes do: [ :each | myCopy add: (dict at: each put: each cloneWithoutParents) ].
	comparisons
		do:
			[ :comp | myCopy compare: (dict at: comp nodeA) to: (dict at: comp nodeB) by: (comp compare: comp nodeA to: comp nodeB) ].
	^ myCopy