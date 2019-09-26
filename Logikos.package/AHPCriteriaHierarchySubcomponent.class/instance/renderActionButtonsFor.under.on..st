rendering
renderActionButtonsFor: each under: parentNode on: html
	each smartJudgementIsAvailable
		ifTrue: [ html tbsGlyphIcon
				iconFlash;
				title:
					'Smart judgement has been configured with "'
						, each smartJudgementStrategy name , '". '
						, each smartJudgementStrategy comment.
			html space ].
	readOnly
		ifTrue: [ ^ self ].
	html anchor
		callback: [ self editNode: each ];
		with: [ html tbsGlyphIcon iconPencil ].
	html space.
	html anchor
		callback: [ self removeNode: each from: parentNode ];
		with: [ html tbsGlyphIcon iconTrash ]