rendering hooks
renderTemplate: each on: html
	html listItem: each name , ' (' , each urlPattern , ')'.
	html
		unorderedList: [ each propertySelectors
				keysAndValuesDo: [ :key :val | html listItem: [ html text: key , ': ' , val ] ] ]