running
setUp
	cluster := AHPNode named: 'cluster'.
	cost := AHPNode named: 'Cost'.
	cluster add: cost.
	comfort := AHPNode named: 'Comfort'.
	cluster add: comfort.
	safety := AHPNode named: 'Safety'.
	cluster add: safety.
	cluster
		compare: cost to: comfort by: 7;
		compare: cost to: safety by: 3;
		compare: comfort to: safety by: 1 / 3