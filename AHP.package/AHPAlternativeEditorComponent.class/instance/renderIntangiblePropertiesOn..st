rendeering
renderIntangiblePropertiesOn: html
	| tangibleProperties |
	tangibleProperties := (self model parents
		asSortedCollection: [ :a :b | a name < b name ])
		reject: [ :each | each isTangible ].
	tangibleProperties ifEmpty: [ ^ self ].
	html heading
		level: 4;
		with: 'Intangible properties'.
	html
		unorderedList: [ tangibleProperties do: [ :each | html listItem: each name ] ]