*AHP
isAvailableFor: collectionOfValues
	^ collectionOfValues
		allSatisfy: [ :each | each asBestGuessedNumber notNil ]