script
tableDataString
	"[['Task', 'Hours per Day'],['Fun',2],['Sports',5],['Study',3],['Work',11]]"

	| stream |
	stream := String new writeStream.
	stream nextPutAll: '[[''Task'', ''Hours per Day'']'.
	data
		keysAndValuesDo: [ :k :v | 
			stream
				nextPutAll: ',[''';
				nextPutAll: k;
				nextPutAll: ''',';
				nextPutAll: v printString;
				nextPutAll: ']' ].
	stream nextPutAll: ']'.
	^ stream contents