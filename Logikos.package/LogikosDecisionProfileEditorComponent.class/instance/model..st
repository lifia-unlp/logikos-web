rendering
model: aNode
	originalNode := aNode.
	super model: aNode cloneWithoutParents.
	name := self model name.
	preferencesComponent := (AHPExahustivePreferenceWeightingSubcomponent
		parent: self)
		node: self model;
		yourself.
	ahpMatrixComponent := AHPMatrixSubcomponent new
		node: model;
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
	inlineEditorComponentForComments textArea: true.
	inlineEditorComponentForUrl := AHPInlinePropertySubcomponent
		object: self model
		selector: #communityUrl
		label: 'On-line community'