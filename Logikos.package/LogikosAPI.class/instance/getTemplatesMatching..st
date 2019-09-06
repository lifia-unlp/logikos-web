logikos-api
getTemplatesMatching: url
	<get>
	<path: '/templates/matching?url={url}'>
	
	^ self requestContext
		respond: [ :response | 
			response
				headerAt: 'Access-Control-Allow-Origin' put: '*';
				headerAt: 'Access-Control-Allow-Credentials' put: 'true';
				contentType: WAMimeType applicationJson;
				status: WAResponse statusOk;
				nextPutAll: (self write: (self logikosApplicationModel templatesMatching: url urlDecoded)) ]