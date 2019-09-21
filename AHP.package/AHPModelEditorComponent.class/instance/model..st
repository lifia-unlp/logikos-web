rendering
model: aNode
	super model: aNode.
	name := aNode name.
	inPlaceNameEditor := InPlacePropertyEditorComponent
		on: #name
		of: self.
	inPlaceNameEditor headingLevel: 5.
	preferencesComponent := (AHPExahustivePreferenceWeightingSubcomponent
		parent: self)
		node: aNode;
		yourself.
	criteriaHierarchyComponent := (AHPCriteriaHierarchySubcomponent
		parent: self)
		node: aNode;
		yourself