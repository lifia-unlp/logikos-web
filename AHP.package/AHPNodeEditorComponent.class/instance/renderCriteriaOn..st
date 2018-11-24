rendering
renderCriteriaOn: html
	self model parents
		ifEmpty: [ html heading
				level: 4;
				with: 'Criteria' ]
		ifNotEmpty: [ html heading
				level: 4;
				with: 'Sub-criteria' ].
	html
		unorderedList: [ self model nodes
				do: [ :each | 
					html
						listItem: [ html anchor
								callback: [ self editNode: each ];
								with: each name ] ] ].
	html anchor
		callback: [ self newNode ];
		with: 'New ...'