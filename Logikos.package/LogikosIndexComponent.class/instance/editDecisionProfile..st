callbacks
editDecisionProfile: profile
	| editor |
	editor := LogikosDecisionProfileEditorComponent model: profile.
	self show: editor.
	
	