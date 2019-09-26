rendering
renderMainContentOn: html
	self renderDetailsOn: html.
	self renderAdvancedInfoOn: html.
	self renderCancelAcceptButtonsOn: html