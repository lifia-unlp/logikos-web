rendering
renderContentOn: html
	html tbsRow
		with: [ html
				tbsColumn: [ self renderPrioritiesForNodes: node nodes under: node on: html ]
				mediumSize: 4.
			html tbsColumn: [ self renderLocalPrioritiesAsPieChartOn: html ] mediumSize: 8.]