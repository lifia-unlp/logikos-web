rendering
renderMainContentOn: html
	self renderEditFormOn: html.
	self renderAlternativesOn: html.
	self renderJudgmentsOn: html.
	self renderAutoRankingOn: html