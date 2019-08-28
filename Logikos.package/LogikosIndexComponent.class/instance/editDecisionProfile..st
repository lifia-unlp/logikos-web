callbacks
editDecisionProfile: profile
	| editor |
	editor := LogikosDecisionProfileEditorComponent on: profile.
	self show: editor.
	
	