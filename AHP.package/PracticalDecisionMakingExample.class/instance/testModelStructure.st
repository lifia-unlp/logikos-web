testing
testModelStructure
	| alternatives |
	alternatives := {carOne.
	carTwo.
	carThree} asSet.
	self
		assertCollection: goal nodes asSet
		equals:
			(Set
				with: safety
				with: aesthetics
				with: comfort
				with: cost).
	self assertCollection: cost nodes asSet equals: (Set with: acquisitionCost with: maintenanceCost).
	self assertCollection: safety nodes asSet equals: alternatives.
	self assertCollection: aesthetics nodes asSet equals: alternatives.
	self assertCollection: comfort nodes asSet equals: alternatives.
	self assertCollection: acquisitionCost nodes asSet equals: alternatives.
	self assertCollection: maintenanceCost nodes asSet equals: alternatives