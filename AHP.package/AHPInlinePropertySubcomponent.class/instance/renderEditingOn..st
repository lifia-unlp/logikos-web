rendering
renderEditingOn: html
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'property';
						with: label.
					(textArea
						ifTrue: [ html textArea ]
						ifFalse: [ html textInput ])
						on: #value of: self;
						tbsFormControl;
						id: 'property' ].
			html
				paragraph: [ html tbsButton
						callback: [ self save ];
						beDefault;
						beExtraSmall;
						with: 'Save'.
					html space.
					html tbsButton
						callback: [ self cancel ];
						beDefault;
						beExtraSmall;
						with: 'Cancel' ] ]