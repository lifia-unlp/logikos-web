rendering
renderEditFormOn: html
	| parents |
	html heading
		level: 4;
		with: 'Details'.
	html
		tbsForm: [ self model parents
				ifNotEmpty: [ parents := (self model parents collect: [ :each | each name ]) fold: [ :a :b | a , ', ' , b ].
					html
						tbsFormGroup: [ html
								label: 'A sub-criteria of: ';
								paragraph: parents ] ].
			html
				tbsFormGroup: [ html label
						for: 'name';
						with: 'Criteria name'.
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
				callback: [ self answer: nil ];
				beSmall;
				with: 'Cancel' ]