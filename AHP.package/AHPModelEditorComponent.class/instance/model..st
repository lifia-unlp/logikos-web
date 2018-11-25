rendering
model: aNode
	super model: aNode.
	name := aNode name.
	preferencesComponent := (AHPPreferenceWeightingSubcomponent parent: self)
		node: aNode;
		yourself.
	criteriaHierarchyComponent := (AHPCriteriaHierarchySubcomponent parent: self)
		node: aNode;
		yourself