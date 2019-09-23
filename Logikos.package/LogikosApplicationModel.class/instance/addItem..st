accessing
addItem: anItem
	| groups |
	groups := anItem groups
		ifEmpty: [ Set with: self defaultNamespaceLabel ].
	groups do: [ :each | self addItem: anItem at: each ]