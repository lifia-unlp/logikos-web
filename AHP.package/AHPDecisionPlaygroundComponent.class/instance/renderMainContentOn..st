rendering
renderMainContentOn: html
	html heading
		level: 3;
		with: 'Making a decision'.
	self
		renderEditFormOn: html;
		renderProfileSummaryOn: html;
		renderJudgmentsOn: html;
		renderAlternativesOn: html