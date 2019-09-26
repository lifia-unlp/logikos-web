accessing
propertyValues
	"Returns the value of the property 'name' in all of the subnodes"

	^ nodes collect: [ :node | node valueForCriteria: name ]