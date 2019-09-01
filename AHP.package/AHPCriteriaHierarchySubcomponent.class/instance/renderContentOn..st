rendering
renderContentOn: html
	html tbsRow
		with: [ html
				tbsColumn: [ self renderLocalPrioritiesAsPieChartOn: html ]
				mediumSize: 6.
			html
				tbsColumn: [ self renderPrioritiesForNodes: node nodes under: node on: html ]
				mediumSize: 6 ]