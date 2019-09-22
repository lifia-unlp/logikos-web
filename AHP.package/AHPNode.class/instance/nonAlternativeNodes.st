accessing
nonAlternativeNodes
	^ nodes reject: [ :each | each isAlternative ]