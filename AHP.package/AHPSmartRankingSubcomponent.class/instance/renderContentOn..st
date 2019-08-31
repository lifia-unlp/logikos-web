rendering
renderContentOn: html
	self parent selectedLeafNode isIntangible
		ifTrue: [ html
				paragraph: 'Smart ranking is not available for intangible criteria.'.
			^ self ].
	self allAlternativesHavePropertyValue
		ifFalse: [ html
				paragraph:
					'Smart ranking is only available if you set the value of "'
						, self parent selectedLeafNode name , '" for all alternatives' ]
		ifTrue:
			[ self renderSmartJudgmentStrategiesOn: html ]