rendering
renderPreferenceJudgmentsOn: html
	| subNodes |
	html tbsTable
		beBordered;
		with: [ html tableHead: [ self renderTableHeadingOn: html. ].
			html
				tableBody: [ subNodes := parentNode nodes asSortedCollection: [ :a :b | a name < b name ].
					subNodes size > 1
						ifTrue: [ 1 to: subNodes size do: [ :i | 
								i + 1 to: subNodes size do: [ :j | 
									self
										renderPreferenceJudgmentBetween: (subNodes at: i)
										and: (subNodes at: j)
										on: html ] ] ] ] ]