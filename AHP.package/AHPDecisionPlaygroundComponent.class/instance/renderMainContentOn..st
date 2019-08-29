rendering
renderMainContentOn: html
	html heading
		level: 3;
		with: 'Decision playground'.
	self
		renderEditFormOn: html;
		renderAlternativesOn: html;
		renderJudgmentsOn: html.
