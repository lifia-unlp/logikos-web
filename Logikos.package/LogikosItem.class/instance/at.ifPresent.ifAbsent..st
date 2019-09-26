accessing
at: aString ifPresent: aBlockClosure ifAbsent: anotherBlockClosure
	^ properties
		at: aString
		ifPresent: aBlockClosure
		ifAbsent: anotherBlockClosure