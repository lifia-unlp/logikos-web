rendering
renderInputFieldsOn: html
	html
		tbsFormGroup: [ html label
				for: 'title';
				with: 'Title'.
			html textInput
				on: #title of: self;
				tbsFormControl;
				id: 'title';
				placeholder: 'Provide a title' ].
	html
		tbsFormGroup: [ html label
				for: 'description';
				with: 'Description'.
			html textArea
				on: #description of: self;
				tbsFormControl;
				id: 'description';
				placeholder: 'Provide a description for this model' ].
	html
		tbsFormGroup: [ html label
				for: 'type';
				with: 'Object type'.
			html textInput
				on: #objectType of: self;
				tbsFormControl;
				id: 'type';
				placeholder: 'What is the typs of objects that will be selected with this model?' ]