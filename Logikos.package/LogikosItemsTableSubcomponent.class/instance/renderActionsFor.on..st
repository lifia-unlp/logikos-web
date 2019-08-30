rendering
renderActionsFor: item on: html
	html anchor
		url: item url;
		target: '_new';
		with: [ html tbsGlyphIcon iconNewWindow ].
	html space.
	html anchor
		callback: [ model removeItem: item ];
		with: [ html tbsGlyphIcon iconTrash ]