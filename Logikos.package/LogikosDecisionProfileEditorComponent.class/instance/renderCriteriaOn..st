hooks
renderCriteriaOn: html
	html
		tbsRow: [ html
				tbsColumn: [ self renderLocalPrioritiesAsPieChartOn: html ]
				mediumSize: 6.
			html
				tbsColumn: [ html
						paragraph:
							'This decision profiles considers the following criteria. The numbers in parenthesis indicate how important each of them is.'.
					html render: criteriaHierarchyComponent.
					html
						paragraph:
							[ self renderUnmentionedPropertiesNoticeOn: html ] ]
				mediumSize: 6 ]