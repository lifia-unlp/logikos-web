cloning
beCloneWithoutParentsOrAlternativesOf: anotherNode
	| nodeCopies subNodeCopy |
	self initialize.
	self name: anotherNode name.
	(nodes anySatisfy: [ :each | each class = AHPAlternative ])
		ifTrue: [ ^ self ].
	nodeCopies := IdentityDictionary new.
	nodes
		do: [ :originalNode | 
			subNodeCopy := originalNode cloneWithoutParentsOrAlternatives.
			nodeCopies at: originalNode put: subNodeCopy.
			self add: subNodeCopy ].
	comparisons
		do: [ :comp | 
			self
				compare: (nodeCopies at: comp nodeA)
				to: (nodeCopies at: comp nodeB)
				by: (comp compare: comp nodeA to: comp nodeB) ]