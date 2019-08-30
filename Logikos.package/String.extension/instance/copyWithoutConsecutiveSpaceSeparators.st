*Logikos
copyWithoutConsecutiveSpaceSeparators
	| sawSpace stream |
	sawSpace := false.
	stream := String new writeStream.
	self
		do: [ :char | 
			char isSeparator
				ifFalse: [ sawSpace := false.
					stream nextPut: char ]
				ifTrue: [ sawSpace
						ifFalse: [ sawSpace := true.
							stream nextPut: Character space ] ] ].
	^ stream contents