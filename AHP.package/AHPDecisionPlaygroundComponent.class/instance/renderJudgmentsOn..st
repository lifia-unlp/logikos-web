rendering
renderJudgmentsOn: html
	html heading
		level: 4;
		with: 'Comparing alternatives '.
	self
		renderLeafNodeSelectorTabOn: html;
		renderJudmentsForSelectedNodeOn: html;
		renderAutoRankingOn: html;
		renderLocalRankingOn: html