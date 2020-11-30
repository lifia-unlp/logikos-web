hooks
renderAhpMatrixOn: html
	hideAHPMatrix
		ifTrue: [ html anchor
				callback: [ hideAHPMatrix := false ];
				with: 'Show details'.
			html paragraph.
			^ self ].
	html heading
		level: 4;
		with: 'AHP Matrix'.
	html anchor
		callback: [ hideAHPMatrix := true ];
		with: 'Hide details'.
	html render: ahpMatrixComponent