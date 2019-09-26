hooks
comment
	^ model nodes
		ifEmpty:
			[ 'This strategy holds a predefined pairwise comparisson of all possible values for the property. Is has not been configured yet.' ]
		ifNotEmpty:
			[ 'This strategy holds a predefined pairwise comparisson of all possible values for the property. It has been configured as follows: '
				, self localPrioritiesSummaryString ]