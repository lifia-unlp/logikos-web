iterating
collect: aBlock
	| result |
	result := OrderedCollection new.
	self collect: aBlock on: result.
	^ result