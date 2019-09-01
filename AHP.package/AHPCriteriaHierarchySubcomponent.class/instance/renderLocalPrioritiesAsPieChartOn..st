rendering
renderLocalPrioritiesAsPieChartOn: html
	html
		render:
			(pieChartSubcomponent
				data:
					(node localPriorities
						associations collect: [ :ass | ass key name -> ass value ]) asDictionary)