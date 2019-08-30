rendering
renderContentOn: html
	html tbsTable
		beStriped;
		with: [ html
				tableHead: (self tableHeadBlockOn: html);
				tableBody: (self tableBodyBlockOn: html) ]