private
pendingComparisons
	^ comparisons select: [ :each | each isPending ] 