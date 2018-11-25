accessing
model: aDecision
	super model: aDecision.
	name := aDecision name.
	preferenceWeightingComponent := AHPPreferenceWeightingSubcomponent parent: self.