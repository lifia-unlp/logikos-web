rendering
renderJudgmentsOn: html
	html heading
		level: 4;
		with: 'Comparing alternatives '.
	self renderLeafNodeSelectorTabOn: html.
	self renderJudmentsForSelectedNodeOn: html