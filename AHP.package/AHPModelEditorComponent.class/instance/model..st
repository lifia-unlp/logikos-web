rendering
model: aNode
	super model: aNode.
	name := aNode name.
	preferencesComponent := (AHPExahustivePreferenceWeightingSubcomponent parent: self)
		node: aNode;
		yourself.
	criteriaHierarchyComponent := (AHPCriteriaHierarchySubcomponent parent: self)
		node: aNode;
		yourself.
	inlineEditorComponentForName := AHPInlinePropertySubcomponent object: aNode selector: #name label: 'Name'