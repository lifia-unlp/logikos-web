instance-creation
basedOn: aModel
	^ self new
		goalModel: aModel veryDeepCopy;
		yourself