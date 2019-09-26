testing
isRedundant: anAssociationOfLabels
	^ (uniqueComparisons includes: anAssociationOfLabels)
		or: [ anAssociationOfLabels key = anAssociationOfLabels value ]