private
properties
	^ (model items flatCollect: [ :item | item properties keys ]) asSet
		asSortedCollection