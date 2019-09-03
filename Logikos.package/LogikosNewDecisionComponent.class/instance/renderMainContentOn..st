rendering
renderMainContentOn: html
	html
		paragraph:
			'Now that you have collected some items, you are ready to explore decision alternatives. Simply provide a name for your decision experiment, and choose one of the already available decision strategies.'.
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'decisionName';
						with: 'Experiment name'.
					html textInput
						tbsFormControl;
						id: 'decisionName';
						placeholder: 'My new decision experiment !' ] ]