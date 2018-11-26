rendering
renderContentOn: html
	self parent selectedLeafNode isIntangible
		ifTrue: [ html paragraph: 'Smart ranking is not available for intangible criteria.'.
			^ self ].
	html
		unorderedList: [ self allAlternatives do: [ :each | html listItem: [ html text: each name , ' ' , (self propertyValueCommentFor: each) ] ] ].
	self allAlternativesHavePropertyValue
		ifTrue: [ html
				paragraph: 'Smart ranking is only available if you set the value of "' , self parent selectedLeafNode name , '" for all alternatives' ]
		ifFalse: [ html
				unorderedList: [ html
						listItem: [ html anchor
								callback: [ self smartJudgeWithNumberDifferenceToMinSJSLargerIsBetter ];
								with: 'Difference to Minimum ratio (Larger is better)' ].
					html
						listItem: [ html anchor
								callback: [ self smartJudgeWithNumberDifferenceToMinSJSSmallerIsBetter ];
								with: 'Difference to Minimum ratio  (Smaller is better)' ] ] ]