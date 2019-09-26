as yet unclassified
isAvailableFor: collectionOfValues
	^ collectionOfValues
		allSatisfy: [ :each | each asBestGuessedNumber notNil ]