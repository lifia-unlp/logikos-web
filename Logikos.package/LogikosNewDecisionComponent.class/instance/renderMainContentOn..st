rendering
renderMainContentOn: html
	html tbsForm
		id: 'theForm';
		with: [ self renderNameAndNotesOn: html.
			name isEmptyOrNil
				ifFalse: [ self renderDecisionProfileChooserOn: html ].
			self renderSubmitButtonsOn: html ]