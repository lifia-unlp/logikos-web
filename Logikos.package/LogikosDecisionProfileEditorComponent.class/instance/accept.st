callbacks
accept
	self model comment: originalNode comment.
	self shouldBeImplemented . "remember you are working on a copy or that you should have"
	^ self answer: model