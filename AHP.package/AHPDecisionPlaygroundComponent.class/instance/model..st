initialization
model: aDecisionToEditOrCancel
	originalDecision := aDecisionToEditOrCancel.
	super model: originalDecision clone.
	preferenceWeightingComponent := AHPSimplifiedPreferenceWeightingSubcomponent
		parent: self.
	inlineEditorComponentForName := AHPInlinePropertySubcomponent
		object: self model
		selector: #name
		label: 'Decision title'.
	inlineEditorComponentForNotes := AHPInlinePropertySubcomponent
		object: self model
		selector: #notes
		label: 'Notes'.
	inlineEditorComponentForNotes textArea: true.
	selectedLeafNode := self sortedLeafNodes first