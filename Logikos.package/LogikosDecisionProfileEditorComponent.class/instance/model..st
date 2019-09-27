rendering
model: aNode
	originalNode := aNode.
	super model: aNode cloneWithoutParents.
	name := self model name.
	pieChartSubcomponent := PieChartSubComponent new
		height: 250;
		width: 400;
		yourself.
	preferencesComponent := (AHPExahustivePreferenceWeightingSubcomponent
		parent: self)
		node: self model;
		dependentComponents: {pieChartSubcomponent};
		yourself.
	criteriaHierarchyComponent := (AHPCriteriaHierarchySubcomponent
		parent: self)
		node: self model;
		displayPriorities: false;
		yourself.
	inlineEditorComponentForName := AHPInlinePropertySubcomponent
		object: self model
		selector: #name
		label: 'Name'.
	inlineEditorComponentForComments := AHPInlinePropertySubcomponent
		object: self model
		selector: #comments
		label: 'Comments'.
	inlineEditorComponentForComments textArea: true