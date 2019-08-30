rendering
tableBodyBlockOn: html
	^ [ model items
		do: [ :item | 
			html
				tableRow: [ self properties
						do:
							[ :prop | html tableData: (item properties at: prop ifAbsent: [ 'NA' ]) ].
					html tableData: [ self renderActionsFor: item on: html ] ] ] ]