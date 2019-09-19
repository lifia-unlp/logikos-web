hooks
renderMainContentOn: html
	html
		tbsJumbotron: [ html heading: self applicationName.
			html paragraph: 'Provide the access code to your dashboard ... .'.
			html tbsForm
				with: [ html
						tbsFormGroup: [ html textInput
								on: #accessCode of: self;
								tbsFormControl;
								id: 'accessCode';
								placeholder: 'your dashboard''s access code' ].
					html space.
					html tbsButton
						callback: [ self grantAccessOnValidCode ];
						with: 'Submit' ] ].
	html tbsAlert
		beWarning;
		with: 'For now, just leave it empty (otherwise, the collector plugin won''t work)'