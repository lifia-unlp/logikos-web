accessing
model: aSharedDecisionModel
	super model: aSharedDecisionModel.
	criteriaHierarchyComponent := (AHPCriteriaHierarchySubcomponent parent: self)
		node: aSharedDecisionModel goalModel;
		beReadOnly;
		yourself.
	title := aSharedDecisionModel title.
	description := aSharedDecisionModel description.
	objectType := aSharedDecisionModel objectType