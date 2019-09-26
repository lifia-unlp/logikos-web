hooks
renderMainContentOn: html
	html
		tbsJumbotron: [ html heading: self applicationName.
			html
				paragraph: 'Rational, multi-criteria decisions for everyone ...'.
			html tbsForm
				with: [ html
						tbsFormGroup: [ html textInput
								on: #accessCode of: self;
								tbsFormControl;
								id: 'accessCode';
								placeholder: 'your dashboard''s access code' ].
					html
						tbsFormGroup: [ html checkbox
								value: populateWithDemoData;
								callback: [ :value | populateWithDemoData := value ].
							html space.
							html text: 'Populate as demo (will overrite existing items, decisions, and profiles)' ].
					html tbsButton
						beDefault;
						callback: [ self grantAccessOnValidCode ];
						with: 'Submit' ] ]