rendering
renderPreferenceJudgmentsOn: html
	| nodes |
	html tbsTable
		beBordered;
		with: [ html tableHead: [ self renderTableHeadingOn: html. ].
			html
				tableBody: [ nodes := node nodes asSortedCollection: [ :a :b | a name < b name ].
					nodes size > 1
						ifTrue: [ 1 to: nodes size do: [ :i | 
								i + 1 to: nodes size do: [ :j | 
									self
										renderPreferenceJudgmentBetween: (nodes at: i)
										and: (nodes at: j)
										at: node
										on: html ] ] ] ] ]