accessing
addAlternative: anAHPAlternative
   anAHPAlternative clearParents.
	alternatives add: anAHPAlternative.
	leafNodes do: [ :each | each add: anAHPAlternative ]