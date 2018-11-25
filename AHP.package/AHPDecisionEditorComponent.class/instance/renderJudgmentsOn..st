rendering
renderJudgmentsOn: html
	self model alternatives
		ifNotEmpty: [ (self model leafNodes asSortedCollection: [ :a :b | a name < b name ])
				do: [ :each | 
					html heading
						level: 4;
						with: 'Comparing alternatives in terms of ' , each name.
					preferenceWeightingComponent node: each.
					html render: preferenceWeightingComponent ] ]