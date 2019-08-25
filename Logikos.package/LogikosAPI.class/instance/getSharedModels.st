ahp-api
getSharedModels
	<get>
	<path: '/sharedModels'>
	
	| models |
	models := AHPApplicationModel singleton sharedModels
		collect: [ :each | 
			each asPropertyDictionary
				at: 'urlBase' put: 'http://localhost:8080/ahp-api/sharedModels' , each title asUrl asString;
				yourself ].
	^ self requestContext
		respond: [ :response | 
			response
				headerAt: 'Access-Control-Allow-Origin' put: '*';
				headerAt: 'Access-Control-Allow-Credentials' put: 'true';
				contentType: WAMimeType applicationJson;
				status: WAResponse statusOk;
				nextPutAll: (NeoJSONWriter toString: models) ]