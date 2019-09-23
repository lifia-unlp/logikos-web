rendering
renderLeafNodeSelectorTabOn: html
	| item |
	html tbsNav
		beTabs;
		with: [ self sortedLeafNodes
				do: [ :each | 
					item := html tbsNavItem.
					each = selectedLeafNode
						ifTrue: [ item beActive ].
					item
						with: [ html anchor
								callback: [ selectedLeafNode := each ];
								with: [ html
										text: each name;
										text:
											(each isTangible
												ifTrue: [ ' (Tangible)' ]
												ifFalse: [ ' (Intangible)' ]).
									each isPristine
										ifTrue: [ html space.
											html tbsGlyphIcon iconQuestionSign ] ] ] ] ]