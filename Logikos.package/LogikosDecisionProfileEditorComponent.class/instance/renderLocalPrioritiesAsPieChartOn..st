hooks
renderLocalPrioritiesAsPieChartOn: html
	[ html
		render:
			(pieChartSubcomponent
				data:
					(self model localPriorities associations
						collect: [ :ass | ass key name -> ass value ]) asDictionary) ]
		on: Error
		do: [ html text: Error printString ]