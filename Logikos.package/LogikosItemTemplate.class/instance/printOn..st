printing
printOn: aStream
	aStream
		nextPutAll: name;
		nextPutAll: ' (';
		nextPutAll: itemType asZnUrl lastPathSegment;
		nextPutAll: ': '.
	propertySelectors keys asSortedCollection
		do: [ :each | aStream nextPutAll: each ]
		separatedBy: [ aStream nextPutAll: ', ' ].
	aStream
		nextPutAll: ') for: ';
		nextPutAll: urlPattern