accessing
model: aDecision
	super model: aDecision.
	name := aDecision name.
	preferenceWeightingComponent := AHPPreferenceWeightingSubcomponent parent: self.
	inlineEditorComponentForName := AHPInlinePropertySubcomponent object: aDecision selector: #name label: 'Name'.
	autoRankingSubcomponent := AHPSmartRankingSubcomponent parent: self.
	selectedLeafNode := self sortedLeafNodes first.