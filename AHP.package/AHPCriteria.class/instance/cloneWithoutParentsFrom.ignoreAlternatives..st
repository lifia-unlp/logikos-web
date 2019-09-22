cloning
cloneWithoutParentsFrom: anotherNode ignoreAlternatives: ignoreAlternatives
	super
		cloneWithoutParentsFrom: anotherNode
		ignoreAlternatives: ignoreAlternatives.
	isTangible := anotherNode isTangible.
	smartJudgementStrategy := smartJudgementStrategy copy