rendering
renderMainContentOn: html
	html heading
		level: 4;
		with: 'Details'.
	html
		tbsForm: [ self renderInputFieldsOn: html.
			self renderFormButtonsOn: html ].
	self renderModelCriteriaOn: html