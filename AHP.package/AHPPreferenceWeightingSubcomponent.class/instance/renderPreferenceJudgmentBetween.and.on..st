rendering
renderPreferenceJudgmentBetween: firstNode and: secondNode on: html
	(self isRedundant: firstNode -> secondNode) & hideObvious
		ifTrue: [ ^ self ].
	html tableRow
		with: [ html tableData
				style: 'text-align: left;';
				with: (self labelForNode: firstNode).
			html tableData
				style: 'text-align: center;';
				with: [ (9 to: 1 by: -1) , ((2 to: 9) collect: #reciprocal)
						do: [ :i | 
							(self compare: firstNode to: secondNode) = i
								ifTrue: [ html tbsGlyphIcon iconCheck ]
								ifFalse: [ html anchor
										callback: [ self compare: firstNode to: secondNode by: i ];
										with: [ i = 1
												ifTrue: [ html tbsGlyphIcon iconMinus ]
												ifFalse: [ i > 1
														ifTrue: [ html tbsGlyphIcon iconChevronLeft ]
														ifFalse: [ html tbsGlyphIcon iconChevronRight ] ] ] ].
							html space ] ].
			html tableData
				style: 'text-align: right;';
				with: (self labelForNode: secondNode) ]