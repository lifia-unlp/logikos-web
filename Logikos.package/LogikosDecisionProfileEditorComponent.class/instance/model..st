initialization
model: aLogikosDecisionProfile
self halt. 
	super model: aLogikosDecisionProfile model.
	name := aLogikosDecisionProfile name.
	preferencesComponent := (AHPPreferenceWeightingSubcomponent parent: self)
		node: aLogikosDecisionProfile;
		yourself.
	criteriaHierarchyComponent := (AHPCriteriaHierarchySubcomponent parent: self)
		node: aLogikosDecisionProfile;
		yourself.
	inlineEditorComponentForName := AHPInlinePropertySubcomponent object: aLogikosDecisionProfile selector: #name label: 'Name'