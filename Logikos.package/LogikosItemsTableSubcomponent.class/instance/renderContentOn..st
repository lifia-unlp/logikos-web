rendering
renderContentOn: html
	html
		tbsForm: [ html tbsTable
				beStriped;
				with: [ html
						tableHead: (self tableHeadBlockOn: html);
						tableBody: (self tableBodyBlockOn: html) ] ]