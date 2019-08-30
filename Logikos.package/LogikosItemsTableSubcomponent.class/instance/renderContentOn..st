rendering
renderContentOn: html
	| properties headBlock tableBlock |
	properties := (model items
		flatCollect: [ :item | item properties keys ]) asSet
		asSortedCollection.
	headBlock := [ properties asSortedCollection
		do: [ :prop | html tableHeading: prop ].
	html tableHeading: '' ].
	tableBlock := [ html
		tableHead: headBlock;
		tableBody: [ model items
				do: [ :item | 
					html
						tableRow: [ properties
								do:
									[ :prop | html tableData: (item properties at: prop ifAbsent: [ 'NA' ]) ].
							html
								tableData: [ html anchor
										url: item url;
										target: '_new';
										with: [ html tbsGlyphIcon iconNewWindow ] ] ] ] ] ].
	html tbsTable
		beStriped;
		with: tableBlock