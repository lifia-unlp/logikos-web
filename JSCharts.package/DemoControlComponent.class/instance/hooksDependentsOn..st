rendering
hooksDependentsOn: html

	| scripts |
	scripts := (dependentComponents copyWith: self)
		collect: [ :each | 
			(html jQuery: '#' , each rootTagId) load
				html: [ :canvas | each renderContentOn: canvas ] ].
	^ scripts fold: [ :a :b | a , b ]