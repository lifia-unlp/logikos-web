rendeering
renderIntangiblePropertiesOn: html
	html heading
		level: 4;
		with: 'Intangible properties'.
	html
		unorderedList: [ (self model parents asSortedCollection: [ :a :b | a name < b name ])
				select: [ :each | each isTangible not ]
				thenDo: [ :each | html listItem: each name ] ]