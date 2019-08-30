rendering
tableBodyBlockOn: html
	| value |
	^ [ model items
		do: [ :item | 
			html
				tableRow: [ self properties
						do: [ :prop | 
							html
								tableData: [ value := item properties at: prop ifAbsent: [ 'NA' ].
									cleaningEnabledForColumn = prop
										ifTrue: [ html textInput
												callback: [ :newValue | item properties at: prop put: newValue ];
												with: value copyWithoutConsecutiveSpaceSeparators ]
										ifFalse: [ html text: value ] ] ].
					html tableData: [ self renderActionsFor: item on: html ] ] ] ]