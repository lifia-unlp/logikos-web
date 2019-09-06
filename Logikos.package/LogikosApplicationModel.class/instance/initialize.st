initialization
initialize
	templates := OrderedCollection new.
	items := Dictionary new.
	items at: self defaultNamespaceLabel put: Dictionary new.
	decisionProfiles := OrderedCollection new.
	decisions := Dictionary new.
	decisions at: self defaultNamespaceLabel put: OrderedCollection new