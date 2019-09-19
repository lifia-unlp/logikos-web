callbacks
editDecisionProfile: profile
	| result |
	profileEditor model: profile cloneWithoutParentsOrAlternatives.
	result := self call: profileEditor.
	result notNil
		ifTrue: [ self session replaceDecisionProfile: profile with: result ]