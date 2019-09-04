instance creation
forItems: aCollectionOfLogikosItems
	| profile properties |
	properties := (aCollectionOfLogikosItems
		flatCollect: [ :each | each properties keys ]) asSet
		asSortedCollection.
	profile := LogikosDecisionProfile
		named: 'All characteristics are equally important'.
	profile
		comments:
			'This profile takes into account the characteristics present in the items you have collected, namely: '
				, (properties reduce: [ :a :b | a , ', ' , b ])
				, ' . When comparing items, all characteristics are equaly important.'.
	properties
		do: [ :property | 
			profile
				add:
					((AHPCriteria named: property)
						beTangible;
						yourself) ].
	^ profile