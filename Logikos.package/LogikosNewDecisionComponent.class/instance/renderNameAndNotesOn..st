rendering
renderNameAndNotesOn: html
	name isEmptyOrNil
		ifTrue: [ html tbsAlert
				beInfo;
				with:
					'Let''s start by giving a name to this decision, and by shortly explaining what your decision is about' ].
	html
		tbsFormGroup: [ html label
				for: 'decisionName';
				with: 'Decision title'.
			html textInput
				tbsFormControl;
				id: 'decisionName';
				on: #name of: self;
				placeholder: 'My new decision experiment !' ].
	html
		tbsFormGroup: [ html label
				for: 'decisionNotes';
				with: 'Notes'.
			html textArea
				tbsFormControl;
				id: 'decisionNotes';
				on: #notes of: self;
				placeholder: 'My new decision experiment !' ]