rendering
renderParentReferenceOn: html
	| parents |
	self model parents
		ifNotEmpty: [ parents := (self model parents collect: [ :each | each name ])
				fold: [ :a :b | a , ', ' , b ].
			html
				label: 'A part of: ';
				paragraph: parents ]