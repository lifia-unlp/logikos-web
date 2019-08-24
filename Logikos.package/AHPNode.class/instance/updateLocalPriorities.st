private
updateLocalPriorities
	| normalizedMatrix |
	self pendingComparisons notEmpty
		ifTrue: [ self error: 'There are pending comparisons' ].
	normalizedMatrix := self normalizedMatrix.
	localPriorities := Dictionary new.
	1 to: nodes size do: [ :i | localPriorities at: (nodes at: i) put: (normalizedMatrix atRow: i) average ]