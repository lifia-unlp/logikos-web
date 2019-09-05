initialization
initialize
	templates := OrderedCollection new.
	items := Dictionary new.
	items at: '_default_' put: Dictionary new.
	decisionProfiles := OrderedCollection new.
	decisions := OrderedCollection new