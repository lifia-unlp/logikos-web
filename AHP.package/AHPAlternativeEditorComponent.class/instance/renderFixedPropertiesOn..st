rendeering
renderFixedPropertiesOn: html
	html
		label: 'Name';
		break.
	html textInput
		on: #name of: self;
		size: 80