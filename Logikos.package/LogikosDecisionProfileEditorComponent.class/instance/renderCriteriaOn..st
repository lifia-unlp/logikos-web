hooks
renderCriteriaOn: html
	html
		tbsRow: [ html
				tbsColumn: [ self renderLocalPrioritiesAsPieChartOn: html ]
				mediumSize: 6.
			html
				tbsColumn: [ html render: criteriaHierarchyComponent.
					html
						paragraph: [ html
								text:
									'Items you collected have the following properties, not mentioned in criteria: '.
							self unmentionedPropertyNamesUsedInItems
								do: [ :propertyName | html text: propertyName ]
								separatedBy: [ html text: ', ' ] ] ]
				mediumSize: 6 ]