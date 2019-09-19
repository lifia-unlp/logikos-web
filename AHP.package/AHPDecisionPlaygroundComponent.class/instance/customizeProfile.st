callbacks
customizeProfile
	| result editor originalProfile originalAlternatives |
	originalProfile := model goalModel.
	editor := LogikosDecisionProfileEditorComponent
		on: originalProfile cloneWithoutParentsOrAlternatives.
	result := self call: editor.
	result ifNil: [ ^ self ].
	originalAlternatives := model alternatives.
	model goalModel: result.
	model addAlternatives: originalAlternatives