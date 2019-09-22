testing
testClone
	| model decision leafNodes name notes clone alternatives |
	name := 'name'.
	notes := 'notes'.
	leafNodes := {Mock new.
	Mock new}.
	alternatives := {Mock new.
	Mock new}.
	model := Mock new.
	model stub leafNodes willReturn: leafNodes.
	decision := (AHPDecision basedOn: model)
		name: name;
		notes: notes;
		yourself.
	decision addAlternatives: alternatives.
	clone := decision clone. 
	model should receive cloneWithoutParents.
	self assert: clone name equals: decision name.
	self deny: clone name == decision name.
	self assert: clone notes equals: decision notes.
	self deny: clone notes == decision notes.
	self assert: clone alternatives first == alternatives first.
	self assert: clone alternatives second == alternatives second