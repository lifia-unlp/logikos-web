initialization
parent: aParentComponent
	super parent: aParentComponent.
	preferenceWeightingSubcomponent := (AHPExahustivePreferenceWeightingSubcomponent parent: self)
		node: self parent selectedStrategy model;
		yourself.
	newName := ''