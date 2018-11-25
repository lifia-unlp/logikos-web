as yet unclassified
basedOn: anAHPNode
	^ self new
		goalModel: anAHPNode;
		name: 'A decision based on "' , anAHPNode name, '"';
		yourself