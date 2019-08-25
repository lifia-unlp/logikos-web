rendering
renderMainContentOn: html
	self renderTemplatesPanelOn: html.
	self renderDecisionProfilesPanelOn: html.
	self renderProjectsPanelOn: html