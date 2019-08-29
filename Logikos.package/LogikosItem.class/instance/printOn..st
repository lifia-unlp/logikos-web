accessing
printOn: aStream
	properties keys
		do: [ :key | 
			aStream
				nextPutAll: key;
				nextPutAll: ':';
				nextPutAll: (properties at: key) ]
		separatedBy: [ aStream nextPutAll: '-' ]