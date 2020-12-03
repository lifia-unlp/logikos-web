rendering
renderContentOn: html
	| subNodes |
	html tbsTable
		beBordered;
		with: [ html
				tableBody: [ subNodes := node nodes.
					html
						tableRow: [ html tableData.
							subNodes
								do: [ :each | 
									html tableData
										style: 'text-align: center;';
										with: each name ] ].
					subNodes
						do: [ :rowNode | 
							html
								tableRow: [ html tableData: rowNode name.
									subNodes
										do: [ :columnNode | 
											html tableData
												style: 'text-align: center;';
												with:
														[ html text: ((node compare: rowNode to: columnNode) asFloat round: 2) ] ] ] ] ] ].
	html
		paragraph:
			[ html text: 'CR: ' , (self consistencyRatio round: 2) printString ]