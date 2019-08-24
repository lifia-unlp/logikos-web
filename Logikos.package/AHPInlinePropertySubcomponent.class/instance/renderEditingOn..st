rendering
renderEditingOn: html
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'property';
						with: label.
					html textInput
						on: #value of: self;
						tbsFormControl;
						id: 'property' ].
			html tbsButton
				callback: [ self save ];
				beExtraSmall;
				with: 'Save'.
			html space.
			html tbsButton
				callback: [ self cancel ];
				beExtraSmall;
				with: 'Cancel' ]