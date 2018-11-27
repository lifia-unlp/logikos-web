converting
asDictionaryWithPriorities
	^ Dictionary new
		at: 'name' put: name;
		at: 'nodes'
			put:
			(self nodes
				collect: [ :each | 
					Dictionary new
						at: 'localPriority' put: (self localPriorityFor: each);
						at: 'overalllPriority' put: (self overallPriorityFor: each);
						at: 'node' put: each asDictionaryWithPriorities;
						yourself ]);
		yourself