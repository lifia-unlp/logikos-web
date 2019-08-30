callbacks
addNewDecisionProfileFromItems
	| profile properties |
	properties := LogikosApplicationModel singleton presentItemProperties.
	profile := LogikosDecisionProfile
		named: 'For items with ' , (properties reduce: [ :a :b | a , ', ' , b ]).
	properties
		do: [ :property | 
			profile
				add:
					((AHPCriteria named: property)
						beTangible;
						yourself) ].
	LogikosApplicationModel singleton addDecisionProfile: profile