testing
hasPristineCriteria
	^ leafNodes anySatisfy: [ :criteria | criteria isPristine ]