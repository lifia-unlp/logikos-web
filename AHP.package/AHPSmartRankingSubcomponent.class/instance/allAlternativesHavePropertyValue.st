rendering
allAlternativesHavePropertyValue
	^ (self allAlternatives
		select: [ :each | each object isNil or: [ (each object at: self parent selectedLeafNode name ifAbsent: [ nil ]) isNil ] ]) notEmpty