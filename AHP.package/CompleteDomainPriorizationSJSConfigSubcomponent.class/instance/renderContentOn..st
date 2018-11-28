rendering
renderContentOn: html
	html heading
		level: 5;
		with: 'Allowed values'.
	html
		unorderedList: [ self parent selectedStrategy allowedValues
				do: [ :each | 
					html
						listItem: [ html
								text: each;
								space.
							html anchor
								callback: [ self removeAlternative: each ];
								with: [ html tbsGlyphIcon iconTrash ] ] ].
			html
				listItem: [ html
						tbsForm: [ html textInput
								on: #newName of: self;
								size: 40.
							html space.
							html tbsButton
								callback: [ self addAlternative ];
								beSmall;
								with: 'Add' ] ] ].
	html heading
		level: 5;
		with: 'Preferences'.
	html render: preferenceWeightingSubcomponent