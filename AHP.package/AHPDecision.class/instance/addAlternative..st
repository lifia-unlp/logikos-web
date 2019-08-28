accessing
addAlternative: aNode
	alternatives add: aNode.
	leafNodes do: [ :each | each add: aNode ]