rendering
renderNameOn: html
	name
		ifNil: [ html tbsAlert
				beInfo;
				with:
					'Let''s start by giving a name to this decision experiment, and by shortly explaining what your decision is about' ].
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'decisionName';
						with: 'Experiment name'.
					html textInput
						tbsFormControl;
						id: 'decisionName';
						on: #name of: self;
						placeholder: 'My new decision experiment !' ].
			html
				tbsFormGroup: [ html label
						for: 'decisionNotes';
						with: 'Experiment notes'.
					html textInput
						tbsFormControl;
						id: 'decisionNotes';
						on: #notes of: self;
						placeholder: 'This is a very difficult decision about something very important !' ] ]