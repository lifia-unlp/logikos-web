rendering
renderJudmentsForSelectedNodeOn: html
	html heading
		level: 5;
		with: 'Alternatives'.
	html
		unorderedList: [ self model alternatives
				do: [ :each | 
					html
						listItem: [ html text: each name.
							html space.
							html
								text: '(Local preference:';
								space;
								text: ((selectedLeafNode localPriorityFor: each) round: 3) printString;
								text: ')' ] ] ].
	html heading
		level: 5;
		with: 'Relative preferences'.
	preferenceWeightingComponent node: selectedLeafNode.
	html render: preferenceWeightingComponent