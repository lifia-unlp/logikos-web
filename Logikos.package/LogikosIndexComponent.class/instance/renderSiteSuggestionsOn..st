rendering-items
renderSiteSuggestionsOn: html
	| types url |
	types := LogikosApplicationModel singleton items
		collect: #type
		as: Set.
	types size = 1
		ifFalse: [ ^ self ].
	html paragraph
	   style: 'padding-top: 5px;';
		with: [ html
				strong: 'Suggestion: ';
				text: 'All items you have collected so far appear to be ';
				text: types any asZnUrl lastPathSegment;
				text: '. These are web-site where other people have seen such items: '.
			(LogikosApplicationModel singleton templates
				select: [ :each | each itemType = types any ])
				do: [ :each | 
					url := each urlPattern asZnUrl.
					html anchor
						url: (ZnUrl fromString: url host defaultScheme: url scheme);
						target: '_new';
						with: url host ]
				separatedBy: [ html text: ', ' ] .
				html text: '. Go there and collect some more !']