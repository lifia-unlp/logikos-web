callbacks
fuelOut
	| blob |
	blob := FLSerializer
		serializeToByteArray: self session applicationModel.
	self requestContext
		respond: [ :response | 
			response
				contentType: WAMimeType applicationOctetStream;
				document: blob;
				attachmentWithFileName: 'logikos-dump-' , DateAndTime now printString asFileName , '.fuel' ]