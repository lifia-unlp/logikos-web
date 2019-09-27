rendering
buildOnCompleteScriptsOn: html
	"((html jQuery: '#' , self rootTagId) load
		html: [ :canvas | self renderContentOn: canvas ])"

	| scripts |
	scripts := (dependentComponents copyWith: self)
		collect: [ :each | 
			(html jQuery: '#' , each rootTagId) load
				html: [ :canvas | each renderContentOn: canvas ] ].
	^ scripts fold: [ :a :b | a , b ]