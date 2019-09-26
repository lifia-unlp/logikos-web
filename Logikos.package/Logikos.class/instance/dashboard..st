accessing
dashboard: aDashboardId
	^ dashboards
		at: aDashboardId
		ifAbsentPut: [ LogikosDashboard id: aDashboardId ]