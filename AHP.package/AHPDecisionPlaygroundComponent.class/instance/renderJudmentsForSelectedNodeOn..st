rendering
renderJudmentsForSelectedNodeOn: html
	preferenceWeightingComponent node: selectedLeafNode.
	html render: preferenceWeightingComponent.
	html anchor
		callback:
				[ preferenceWeightingComponent := AHPSimplifiedPreferenceWeightingSubcomponent 
				parent: self ];
		with: 'Simple'.
	html space.
	html anchor
		callback:
				[ preferenceWeightingComponent := AHPExahustivePreferenceWeightingSubcomponent
				parent: self ];
		with: 'Complete'