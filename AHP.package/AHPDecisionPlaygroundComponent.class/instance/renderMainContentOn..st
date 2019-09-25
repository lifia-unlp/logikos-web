rendering
renderMainContentOn: html
	html heading
		level: 3;
		with: 'Making a decision'.
	self
		renderEditFormOn: html;
		renderAlternativesOn: html;
		renderJudgmentsOn: html;
		renderProfileSummaryOn: html;
		renderCancelAcceptButtonsOn: html