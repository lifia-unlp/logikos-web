testing
testClone
	| decision name notes clone profile alternatives |
	name := 'name'.
	notes := 'notes'.
	alternatives := OrderedCollection
		with: (AHPAlternative named: 'Auto verde')
		with: (AHPAlternative named: 'Auto rojo').
	profile := LogikosDecisionProfile named: 'profile'.
	profile comments: 'comments'.
	profile
		add: (AHPCriteria named: 'price');
		add: (AHPCriteria named: 'weight').
	decision := (AHPDecision basedOn: profile)
		name: name;
		notes: notes;
		yourself.
	decision addAlternatives: alternatives.
	"profile stub."
	clone := decision clone.
	"	profile should receive cloneWithoutParents."
	self assert: clone name equals: decision name.
	self deny: clone name == decision name.
	self assert: clone notes equals: decision notes.
	self deny: clone notes == decision notes.
	self assertCollection: clone alternatives equals: alternatives.
	self
		assert: clone  leafNodes size
		equals: decision  leafNodes size