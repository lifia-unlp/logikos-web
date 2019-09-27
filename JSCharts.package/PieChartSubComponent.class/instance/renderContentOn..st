rendering
renderContentOn: html
	html div
		id: self rootTagId ;
		style:
			'width: ' , width printString , 'px; height: ' , height printString
				, 'px;'.
	html script: self js