hooks
renderCriteriaOn: html
	super renderCriteriaOn: html.
	html
		paragraph: [ html
				text:
					'Items you collected have the following properties, not mentioned in criteria: '.
			self unmentionedPropertyNamesUsedInItems
				do: [ :propertyName | html text: propertyName ]
				separatedBy: [ html text: ', ' ] ]