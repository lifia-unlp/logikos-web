rendeering
renderMainContentOn: html
	html heading
		level: 4;
		with: 'Details'.
	html
		tbsForm: [ self renderFixedPropertiesOn: html.
			self renderTangiblePropertiesOn: html.
			self renderIntangiblePropertiesOn: html.
			self renderFormButtonsOn: html ]