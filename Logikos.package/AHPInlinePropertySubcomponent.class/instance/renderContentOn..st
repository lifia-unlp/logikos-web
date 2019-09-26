rendering
renderContentOn: html
	editing
		ifTrue: [ self renderEditingOn: html ]
		ifFalse: [ self renderDisplayingOn: html ]