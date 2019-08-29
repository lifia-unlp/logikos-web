rendering
renderLocalRankingOn: html
	html heading
		level: 5;
		with: 'Ranking in terms of ' , selectedLeafNode name.
	html
		orderedList: [ (self model alternatives
				asSortedCollection: [ :earlier :later | 
					(self localPriorityStringFor: earlier)
						> (self localPriorityStringFor: later) ])
				do: [ :each | 
					html
						listItem: [ html text: each name , ' ' , (self localPriorityStringFor: each) ] ] ]