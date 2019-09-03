rendering
tableBodyBlockOn: html
	^ [ model templates
		do: [ :each | 
			html
				tableRow: [ html
						tableData: each name;
						tableData: each urlPattern;
						tableData: [ each propertySelectors keys asSortedCollection
								do: [ :prop | html text: prop ]
								separatedBy: [ html text: ', ' ] ];
						tableData: '' ] ] ]