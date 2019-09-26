accessing profiles
replaceDecisionProfile: originalProfile with: replacement at: aDashboardId
	(self dashboard: aDashboardId)
		replaceDecisionProfile: originalProfile
		with: replacement