priorities
overallPriorityFor: anAHPNode
	^ parents
		ifEmpty: [ self localPriorityFor: anAHPNode ]
		ifNotEmpty: [ self parents sumNumbers: [ :aParent | (self localPriorityFor: anAHPNode) * (aParent overallPriorityFor: self) ] ]