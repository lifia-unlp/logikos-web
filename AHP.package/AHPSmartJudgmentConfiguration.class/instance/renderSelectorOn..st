rendering
renderSelectorOn: html
	html
		paragraph:
			'These some alternatives for "smart judgement" that you can attach to a criteria to help the users:'.
	html
		unorderedList: [ self
				renderChoice: CompleteDomainPriorizationSJS new
				named: '"Pairwise comparisson of all possible values"'
				whenNote:
					' when you know all the possible values that this criteria can take, and you can compare them in pairs.'
				on: html.
			self
				renderChoice: NormalizedDifferenceSJS new
				named: '"Treat it as a number"'
				whenNote:
					'when you know that this criteria takes a value that can be turned into a number. Numbers will be automatically compared.'
				on: html.
			self
				renderChoice: nil
				named: '"Do nothing special"'
				whenNote: 'when you want to leave all up to the user.'
				on: html ]