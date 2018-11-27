running
addAlternatives
	carOne := AHPNode named: 'Car 1'.
	carTwo := AHPNode named: 'Car 2'.
	carThree := AHPNode named: 'Car 3'.
	{carOne.
	carTwo.
	carThree} do: [ :each | decision addAlternative: each ]