rendering
renderPreferenceJudgmentBetween: firstNode and: secondNode at: aParentNode on: html
	html tableRow
		with: [ html tableData
				style: 'text-align: left;';
				with: (self labelForNode: firstNode).
			html tableData
				style: 'text-align: center;';
				with: [ (1 to: 9) reversed
						do: [ :i | 
							(aParentNode compare: firstNode to: secondNode) = i
								ifTrue: [ html tbsGlyphIcon iconCheck ]
								ifFalse: [ html anchor
										callback: [ aParentNode compare: firstNode to: secondNode by: i ];
										with: [ i = 1
												ifTrue: [ html tbsGlyphIcon iconMinus ]
												ifFalse: [ html tbsGlyphIcon iconChevronLeft ] ] ].
							html space ].
					2 to: 9 do: [ :i | 
						(aParentNode compare: secondNode to: firstNode) = i
							ifTrue: [ html tbsGlyphIcon iconCheck ]
							ifFalse: [ html anchor
									callback: [ aParentNode compare: secondNode to: firstNode by: i ];
									with: [ html tbsGlyphIcon iconChevronRight ] ].
						html space ] ].
			html tableData
				style: 'text-align: right;';
				with: (self labelForNode: secondNode) ]