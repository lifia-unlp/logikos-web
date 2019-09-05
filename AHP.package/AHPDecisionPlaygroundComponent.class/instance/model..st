initialization
model: aDecision
	super model: aDecision.
	name := aDecision name.
	preferenceWeightingComponent := AHPSimplifiedPreferenceWeightingSubcomponent
		parent: self.
	inlineEditorComponentForName := AHPInlinePropertySubcomponent
		object: aDecision
		selector: #name
		label: 'Decision title'.
	inlineEditorComponentForNotes := AHPInlinePropertySubcomponent
		object: aDecision
		selector: #notes
		label: 'Notes'.
	inlineEditorComponentForNotes textArea: true.
	selectedLeafNode := self sortedLeafNodes first