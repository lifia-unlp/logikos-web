rendering
renderMainContentOn: html
	html heading
		level: 2;
		with: 'Available decision models'.
	html
		unorderedList: [ self model rootNodes
				do: [ :each | 
					html
						listItem: [ html anchor
								callback: [ self editNode: each ];
								with: each name ] ] ].
	html anchor
		callback: [ self newNode ];
		with: 'New ...'