rendering
renderMainContentOn: html
	self renderEditFormOn: html.
	self model alternatives
		ifNotEmpty: [ self model leafNodes
				do: [ :each | 
					html heading
						level: 4;
						with: 'Comparing alternatives in terms of ' , each name ] ]