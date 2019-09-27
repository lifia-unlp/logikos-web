rendering
renderContentOn: html
	| subNodes |
	html tbsTable
		id: self rootTagId;
		beBordered;
		with: [ html tableHead: [ self renderTableHeadingOn: html ].
			html
				tableBody: [ subNodes := parentNode nodes
						asSortedCollection: [ :a :b | a name < b name ].
					subNodes size > 1
						ifTrue: [ 1 to: subNodes size do: [ :i | 
								i + 1 to: subNodes size do: [ :j | 
									self
										renderPreferenceJudgmentBetween: (subNodes at: i)
										and: (subNodes at: j)
										on: html ] ] ] ] ].
	self smartJudgementIsAvailable
		ifTrue: [ html
				paragraph: [ html small
						with: [ html
								text:
									'Smart ranking is available for this dimention. That means I can help you compare the values based on the profile you selected. You can change it as you wish, and then use the flash icon ('.
							html tbsGlyphIcon iconFlash.
							html text: ') to return to my suggested comparison.' ] ] ]