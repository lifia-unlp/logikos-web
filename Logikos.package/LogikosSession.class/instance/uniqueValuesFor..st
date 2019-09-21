api
uniqueValuesFor: aCriteriaName
	^ (self items
		collect: [ :each | each at: aCriteriaName ifAbsent: [ nil ] ]) asSet