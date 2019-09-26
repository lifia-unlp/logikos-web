rendering
propertyValueFor: each
	^ each object at: self parent selectedLeafNode name ifAbsent: [ nil ]