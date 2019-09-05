comparing
compare: firstNode to: secondNode by: aValue
	| likeTheFirst likeTheSecond |
	likeTheFirst := parentNode nodes
		select: [ :each | (self labelForNode: each) = (self labelForNode: firstNode) ].
	likeTheSecond := parentNode nodes
		select:
			[ :each | (self labelForNode: each) = (self labelForNode: secondNode) ].
	likeTheFirst
		do: [ :oneLikeTheFirst | 
			likeTheSecond
				do: [ :oneLikeTheSecond | 
					oneLikeTheFirst == oneLikeTheSecond
						ifFalse:
							[ parentNode compare: oneLikeTheFirst to: oneLikeTheSecond by: aValue ] ] ]