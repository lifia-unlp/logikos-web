logikos-api
patchTemplate
	<patch>
	<path: '/templates'>
	| template |
	template := self
		read: self requestContext request rawBody
		as: LogikosItemTemplate.
	template id
		ifNil: [ template id: Time millisecondClockValue.
			self logikosApplicationModel addTemplate: template ]
		ifNotNil: [ self logikosApplicationModel patchTemplate: template ].
	^ self requestContext
		respond: [ :response | 
			response
				status: WAResponse statusOk;
				nextPutAll: 'Ok' ]