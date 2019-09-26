rendering
renderChoice: aStrategy named: aName whenNote: whenNote on: html
	html
		listItem: [ selectedStrategy class = aStrategy class
				ifTrue: [ html tbsGlyphIcon iconCheck.
					html space.
					html
						text: ' You attach ';
						emphasis: aName;
						text: ' ' , whenNote ]
				ifFalse: [ html anchor
						callback: [ self selectStrategy: aStrategy ];
						with: [ html tbsGlyphIcon iconUnchecked.
							html space.
							html
								text: ' You attach ';
								emphasis: aName;
								text: ' ' , whenNote ] ] ]