rendering
renderEditFormOn: html
	html heading
		level: 4;
		with: 'Details'.
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'name';
						with: 'Decision name'.
					html textInput
						on: #name of: self;
						tbsFormControl;
						id: 'name' ].
			html tbsButton
				callback: [ self save ];
				beSmall;
				with: 'Save'.
			html space.
			html tbsButton
				callback: [ self cancel ];
				beSmall;
				with: 'Cancel' ]