rendering
renderContentOn: html
	| allAlternatives |
	self parent selectedLeafNode isIntangible
		ifTrue: [ html paragraph: 'Smart ranking is not available for intangible criteria. You will have to thing it trough'.
			^ self ].
	allAlternatives := self parent selectedLeafNode nodes.
	(allAlternatives
		select: [ :each | each object isNil or: [ (each object at: self parent selectedLeafNode name ifAbsent: [ nil ]) isNil ] ])
		notEmpty
		ifTrue: [ html paragraph: 'Smart ranking is only available if you set the property value for all alternatives' ].
	html
		unorderedList: [ allAlternatives do: [ :each | html listItem: [ html text: each name , ' ' , (self propertyValueStringFor: each) ] ] ]