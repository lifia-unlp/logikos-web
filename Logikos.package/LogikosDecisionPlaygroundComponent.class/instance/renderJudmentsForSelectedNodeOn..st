rendering
renderJudmentsForSelectedNodeOn: html
	html heading
		level: 5;
		with: [ html text: 'Relative preferences '.
			self smartJudgementIsAvailable
				ifTrue: [ html anchor
						callback: [ self autorank ];
						title: 'Click for a suggestion!';
						with: [ html tbsGlyphIcon iconExclamationSign ] ] ].
	preferenceWeightingComponent node: selectedLeafNode.
	html render: preferenceWeightingComponent