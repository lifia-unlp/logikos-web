rendering
renderMainContentOn: html
	self renderTemplatesPanelOn: html.
	self renderItemsPanelOn: html.
	self renderDecisionProfilesPanelOn: html