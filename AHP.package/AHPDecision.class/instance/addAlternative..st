accessing
addAlternative: anAHPAlternative
	| clonedAlternative |
	clonedAlternative := anAHPAlternative cloneWithoutParents.
	alternatives add: clonedAlternative.
	leafNodes do: [ :each | each add: clonedAlternative ]