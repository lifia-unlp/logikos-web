private
write: anObject
	^ String
		streamContents: [ :stream | 
			(NeoJSONWriter on: stream)
				prettyPrint: true;
				mapInstVarsFor: LogikosItemTemplate;
				nextPut: anObject ]