accessing
replaceDecisionProfile: originalProfile with: replacement
	decisionProfiles
		at: (decisionProfiles indexOf: originalProfile)
		put: replacement