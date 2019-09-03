rendering
renderProfileSummaryOn: html
	html heading
		level: 4;
		with: 'Base profile'.
	html
		tbsRow: [ html
				tbsColumn: [ [ html
						render:
							(pieChartSubcomponent
								data:
									(self model goalModel localPriorities associations
										collect: [ :ass | ass key name -> ass value ]) asDictionary) ]
						on: Error
						do: [ html text: Error printString ] ]
				mediumSize: 6.
			html tbsColumn: [ html paragraph: [ html strong: self model goalModel name ]; paragraph: (self model notes ifNil: [ 'This profile has no  notes... sorry'  ]) ] mediumSize: 6 ]