rendering
renderSelectedStrategyOn: html
	selectedStrategy ifNotNil: [ html paragraph: selectedStrategy class comment ]