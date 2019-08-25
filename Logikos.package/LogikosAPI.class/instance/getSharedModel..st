ahp-api
getSharedModel: title
	<get>
	<path: '/sharedModels/{title}'>
	| model dict |
	model := AHPApplicationModel singleton sharedModels
		detect: [ :each | each title = title ]
		ifNone: [ nil ].
	^ model
		ifNil: [ self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusNotFound;
						nextPutAll: 'There are no models with title: ' , title ] ]
		ifNotNil: [ dict := model asPropertyDictionary
				at: 'urlBase' put: 'http://localhost:8080/ahp-api/sharedModels' , model title asUrl asString;
				yourself.
			self requestContext
				respond: [ :response | 
					response
						headerAt: 'Access-Control-Allow-Origin' put: '*';
						headerAt: 'Access-Control-Allow-Credentials' put: 'true';
						contentType: WAMimeType applicationJson;
						status: WAResponse statusOk;
						nextPutAll: (NeoJSONWriter toString: dict) ] ]