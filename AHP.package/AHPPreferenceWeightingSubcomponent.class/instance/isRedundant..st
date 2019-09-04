testing
isRedundant: anAssociation
	^ (uniqueComparisons includesKey: anAssociation)
		or: [ (uniqueComparisons includesKey: anAssociation inverse)
				or: [ (self labelForNode: anAssociation key)
						= (self labelForNode: anAssociation value) ] ]