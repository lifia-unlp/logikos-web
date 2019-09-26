accessing items
populateAsDemo: aDashboardId
	dashboards
		at: aDashboardId
		put:
			(self class demoDashboard
				id: aDashboardId;
				yourself)