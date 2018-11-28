initialization
parent: aParentComponent
	super parent: aParentComponent.
	preferenceWeightingSubcomponent := (AHPPreferenceWeightingSubcomponent parent: self)
		node: self parent selectedStrategy model;
		yourself.
	newName := ''