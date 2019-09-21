rendering
renderValuesInDashboardOn: html
	html label: 'Possible values'.
	html
		paragraph: [ (self session uniqueValuesFor: self model name) asSortedCollection
				do: [ :each | html text: each ]
				separatedBy: [ html text: ', ' ] ].
	html
		paragraph: [ html
				small:
					'These are only the values that items in your dashboard have for '
						, self model name
						, '. They are only a sample of the possible values' ]