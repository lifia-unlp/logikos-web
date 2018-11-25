rendering
renderJudmentsForSelectedNodeOn: html
	html heading
		level: 5;
		with: 'Alternatives'.
	html
		unorderedList: [ self model alternatives
				do:
					[ :each | html listItem: [ html text: each name, ' ' , (self localPriorityStringFor: each) , (self propertyValueStringFor: each)  ] ] ].
	html heading
		level: 5;
		with: 'Relative preferences'.
	preferenceWeightingComponent node: selectedLeafNode.
	html render: preferenceWeightingComponent