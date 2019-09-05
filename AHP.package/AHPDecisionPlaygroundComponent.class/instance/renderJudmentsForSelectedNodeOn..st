rendering
renderJudmentsForSelectedNodeOn: html
	preferenceWeightingComponent node: selectedLeafNode.
	html render: preferenceWeightingComponent.