rendering
renderJudmentsForSelectedNodeOn: html
	html heading
		level: 5;
		with: 'Relative preferences'.
	preferenceWeightingComponent node: selectedLeafNode.
	html render: preferenceWeightingComponent