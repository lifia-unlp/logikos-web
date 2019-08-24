rendeering
renderTangiblePropertiesOn: html
	| tangibleParents |
	tangibleParents := (self model parents asSortedCollection: [ :a :b | a name < b name ])
		select: [ :each | each isTangible ].
	html heading
		level: 4;
		with: 'Tangible properties'.
	tangibleParents
		do: [ :each | 
			html
				label: each name;
				break.
			html
				paragraph: [ html textInput
						callback: [ :value | self setValueFor: each name to: value ];
						placeholder: 'Provide a value for this property';
						value: (self getValueFor: each name);
						size: 80 ] ]