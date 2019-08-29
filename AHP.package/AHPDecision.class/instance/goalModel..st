initialization
goalModel: anAHPNode
	goalModel := anAHPNode cloneWithoutParents.
	leafNodes := goalModel leafNodes.
	alternatives := OrderedCollection new