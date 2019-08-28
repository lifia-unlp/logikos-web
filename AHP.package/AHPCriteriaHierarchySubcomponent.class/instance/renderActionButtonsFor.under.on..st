rendering
renderActionButtonsFor: each under: parentNode on: html
	readOnly
		ifFalse: [ html space.
			html anchor
				callback: [ self removeNode: each from: parentNode ];
				with: [ html tbsGlyphIcon iconTrash ] ]