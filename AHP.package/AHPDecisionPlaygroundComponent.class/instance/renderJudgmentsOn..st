rendering
renderJudgmentsOn: html
	html heading
		level: 4;
		with: 'Comparing alternatives '.
	self
		renderLeafNodeSelectorTabOn: html;
		renderJudmentsForSelectedNodeOn: html;
		renderLocalRankingOn: html