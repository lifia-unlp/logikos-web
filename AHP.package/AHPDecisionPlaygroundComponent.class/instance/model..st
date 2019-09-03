accessing
model: aDecision
	super model: aDecision.
	name := aDecision name.
	preferenceWeightingComponent := AHPPreferenceWeightingSubcomponent
		parent: self.
	inlineEditorComponentForName := AHPInlinePropertySubcomponent
		object: aDecision
		selector: #name
		label: 'Name'.
	inlineEditorComponentForNotes := AHPInlinePropertySubcomponent
		object: aDecision
		selector: #notes
		label: 'Notes'.
	inlineEditorComponentForNotes textArea: true.
	selectedLeafNode := self sortedLeafNodes first