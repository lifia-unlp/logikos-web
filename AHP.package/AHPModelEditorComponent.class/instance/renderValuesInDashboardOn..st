rendering
renderValuesInDashboardOn: html
	| asNumbers |
	html label: 'Some possible values'.
	html
		paragraph: [ html text: 'In you dashboard: '.
			(self session uniqueValuesFor: self model name) asSortedCollection
				do: [ :each | html text: each ]
				separatedBy: [ html text: ', ' ] ].
	asNumbers := (self session uniqueValuesFor: self model name)
		collect: #asBestGuessedNumber.
	(asNumbers allSatisfy: #notNil)
		ifTrue: [ html
				paragraph: [ html text: 'Treating them as numbers: '.
					(((self session uniqueValuesFor: self model name)
						collect: #asBestGuessedNumber) select: #notNil)
						asSortedCollection
						do: [ :each | html text: each printString ]
						separatedBy: [ html text: ', ' ] ] ].
	html
		paragraph: [ html
				small:
					'Note: These are only the values that items in your dashboard have for '
						, self model name , '. New items may have other values.' ]