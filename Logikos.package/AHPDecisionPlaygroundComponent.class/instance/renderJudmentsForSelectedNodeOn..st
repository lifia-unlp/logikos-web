rendering
renderJudmentsForSelectedNodeOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelBody: [ preferenceWeightingComponent node: selectedLeafNode.
					html render: preferenceWeightingComponent.
					self renderLocalRankingOn: html ] ]