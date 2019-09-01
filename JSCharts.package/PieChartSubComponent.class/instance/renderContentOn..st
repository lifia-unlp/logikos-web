rendering
renderContentOn: html
	html div
		id: 'piechart';
		style:
			'width: ' , width printString , 'px; height: ' , height printString
				, 'px;'.
	html script: self js