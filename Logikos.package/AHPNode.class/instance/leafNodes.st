accessing
leafNodes
	^ nodes ifEmpty: [ Set with: self ] ifNotEmpty: [ nodes flatCollectAsSet: [ :each | each leafNodes ] ]