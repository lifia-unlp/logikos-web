cloning
cloneWithoutParents
	| myClone |
	myClone := super cloneWithoutParents.
	myClone isTangible: isTangible.
	myClone smartJudgementStrategy: smartJudgementStrategy copy.
	^ myClone