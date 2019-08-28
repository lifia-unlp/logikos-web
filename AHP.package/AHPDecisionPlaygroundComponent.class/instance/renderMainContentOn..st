rendering
renderMainContentOn: html
	html heading
		level: 3;
		with: 'Decision playground'.
	self renderEditFormOn: html.
	self renderAlternativesOn: html.
	self renderJudgmentsOn: html.
	self renderAutoRankingOn: html