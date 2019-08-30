rendering
renderActionsFor: item on: html
	html anchor
		url: item url;
		target: '_new';
		title: 'Browser in a new tab' ;
		with: [ html tbsGlyphIcon iconNewWindow ].
	html space.
	html anchor
		callback: [ model removeItem: item ];
		title: 'Remove this item';
		with: [ html tbsGlyphIcon iconTrash ]