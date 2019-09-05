rendering
recordShown: anAssociation withWeight: aWeight
	((uniqueComparisons includesKey: anAssociation)
		or: [ uniqueComparisons includesKey: anAssociation inverse ])
		ifFalse: [ uniqueComparisons at: anAssociation put: aWeight ]