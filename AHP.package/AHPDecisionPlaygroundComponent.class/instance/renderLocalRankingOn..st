rendering
renderLocalRankingOn: html
	html heading
		level: 5;
		with: 'Local ranking'.
	html
		unorderedList: [ (self model alternatives
				asSortedCollection: [ :earlier :later | 
					(self localPriorityStringFor: earlier)
						> (self localPriorityStringFor: later) ])
				do: [ :each | 
					html
						listItem: [ html text: each name , ' ' , (self localPriorityStringFor: each) ] ] ]