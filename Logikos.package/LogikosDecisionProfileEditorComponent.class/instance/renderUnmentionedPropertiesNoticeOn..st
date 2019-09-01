hooks
renderUnmentionedPropertiesNoticeOn: html
	self unmentionedPropertyNamesUsedInItems ifEmpty: [ ^ self ].
	html text: 'Items you collected also share the following properties: '.
	self unmentionedPropertyNamesUsedInItems
		do: [ :propertyName | html emphasis: propertyName ]
		separatedBy: [ html text: ', ' ].
	html text: '. You may want to a them to the list.'