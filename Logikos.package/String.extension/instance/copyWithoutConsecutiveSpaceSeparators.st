*Logikos
copyWithoutConsecutiveSpaceSeparators
	| sawSpace stream |
	sawSpace := false.
	stream := String new writeStream.
	self
		do: [ :char | 
			char isSpaceSeparator
				ifFalse: [ sawSpace := false.
					stream nextPut: char ]
				ifTrue: [ sawSpace
						ifFalse: [ sawSpace := true.
							stream nextPut: char ] ] ].
	^ stream contents