rendering
renderActionButtonsFor: each under: parentNode on: html
	readOnly
		ifTrue: [ ^ self ].
	html anchor
		callback: [ self editNode: each ];
		with: [ html tbsGlyphIcon iconPencil ].
	html space.
	html anchor
		callback: [ self removeNode: each from: parentNode ];
		with: [ html tbsGlyphIcon iconTrash ]