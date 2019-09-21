cloning
beCloneWithoutParentsOf: anotherNode 
	|  nodeCopies subNodeCopy |
   self initialize. 
	nodeCopies := IdentityDictionary new.
	nodes
		do: [ :originalNode | 
			subNodeCopy := originalNode cloneWithoutParents.
			nodeCopies at: originalNode put: subNodeCopy .
			self add: subNodeCopy ].
	comparisons
		do: [ :comp | 
			self
				compare: (nodeCopies at: comp nodeA)
				to: (nodeCopies at: comp nodeB)
				by: (comp compare: comp nodeA to: comp nodeB) ].