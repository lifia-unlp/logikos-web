rendering
renderContentOn: html
	html heading: 'Hello'.
	html div
		id: 'piechart';
		style:
			'width: ' , width printString , 'px; height: ' , height printString
				, 'px;'