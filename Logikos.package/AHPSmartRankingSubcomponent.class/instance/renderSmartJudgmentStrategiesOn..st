rendering
renderSmartJudgmentStrategiesOn: html

	html
		unorderedList: [ html
				listItem: [ html anchor
						callback: [ self smartJudgeWithNumberDifferenceToMinSJSLargerIsBetter ];
						with: 'Difference to Minimum ratio (Larger is better)' ].
			html
				listItem: [ html anchor
						callback: [ self smartJudgeWithNumberDifferenceToMinSJSSmallerIsBetter ];
						with: 'Difference to Minimum ratio  (Smaller is better)' ] ]