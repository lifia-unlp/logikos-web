accessing
removeAlternative: aNode
	alternatives remove: aNode.
	leafNodes do: [ :each | each remove: aNode ]