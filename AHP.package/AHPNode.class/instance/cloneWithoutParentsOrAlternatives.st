cloning
cloneWithoutParentsOrAlternatives
	| myCopy nodeCopies subNodeCopy |
	myCopy := self class named: name copy.
	(nodes anySatisfy: [ :each | each class = AHPAlternative ])
		ifTrue: [ ^ myCopy ].
	nodeCopies := IdentityDictionary new.
	nodes
		do: [ :originalNode | 
			subNodeCopy := originalNode cloneWithoutParents.
			nodeCopies at: originalNode put: subNodeCopy.
			myCopy add: subNodeCopy ].
	comparisons
		do: [ :comp | 
			myCopy
				compare: (nodeCopies at: comp nodeA)
				to: (nodeCopies at: comp nodeB)
				by: (comp compare: comp nodeA to: comp nodeB) ].
	^ myCopy