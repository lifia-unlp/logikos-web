rendering
renderSmartJudgementStrategyFor: each on: html
	html text: each name.
	html space.
	^ each smartJudgementStrategy
		ifNotNil: [ html anchor
				callback: [ self clearSmartJudgmentStrategyFor: each ];
				with: [ html tbsGlyphIcon
						tbsTooltip: 'Clear smart judgement strategy';
						iconRemoveCircle ].
			html space.
			html anchor
				callback: [ self editSmartJudgmentStrategyFor: each ];
				with: [ html tbsGlyphIcon
						tbsTooltip: 'Edit smart judgement strategy';
						iconPencil ].
			html space ]
		ifNil: [ html anchor
				callback: [ self attachSmartJudgementStrategyTo: each ];
				with: [ html tbsGlyphIcon
						tbsTooltip: 'Configure smart judgement strategy';
						iconFlash ] ]