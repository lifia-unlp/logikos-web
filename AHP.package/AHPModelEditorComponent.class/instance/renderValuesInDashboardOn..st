rendering
renderValuesInDashboardOn: html
	html label: 'Values for items in your dashboard'.
	html
		paragraph: [ (self session uniqueValuesFor: self model name) asSortedCollection
				do: [ :each | html text: each ]
				separatedBy: [ html text: ', ' ] ]