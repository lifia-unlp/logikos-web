accessing
allowedValues
	^ (model nodes collect: [ :each | each name ]) asSortedCollection