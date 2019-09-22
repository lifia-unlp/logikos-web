private
comparesLike: anotherNode
	"we do not need to check identity comparisons, as they are 1 by definition"

	| itsNodeNames |
	itsNodeNames := anotherNode nodeNames.
	self nodeNames = itsNodeNames
		ifFalse: [ ^ false ].
	itsNodeNames combinations
		select: [ :each | each size = 2 ]
		thenDo: [ :comb | 
			(self compareName: comb first toName: comb second)
				= (anotherNode compareName: comb first toName: comb second)
				ifFalse: [ ^ false ] ].
	^ true