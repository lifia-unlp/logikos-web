initialization
model: aModel
	super model: aModel.
	preferenceWeightingComponent := LogikosPreferenceWeightingSubcomponent
		parent: self