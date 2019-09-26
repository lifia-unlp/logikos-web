utility
smartJudge
	self smartJudgementIsAvailable
		ifFalse: [ ^ self ].
	smartJudgementStrategy smartJudge: self