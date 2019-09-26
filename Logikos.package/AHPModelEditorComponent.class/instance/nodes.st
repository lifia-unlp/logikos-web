accessing
nodes
  ^self model nodes asSortedCollection: [ :a :b | a name < b name ].
	