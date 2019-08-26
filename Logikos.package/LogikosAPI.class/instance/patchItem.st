logikos-api
patchItem
	<patch>
	<path: '/items'>
	| item |
	item := self
		read: self requestContext request rawBody
		as: LogikosItem.
	self logikosApplicationModel addItem: item.
	^ self requestContext
		respond: [ :response | 
			response
				status: WAResponse statusOk;
				nextPutAll: 'Ok' ]