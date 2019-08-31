rendering
renderContentOn: html
	html heading
		level: 5;
		with: 'Configuration'.
	html
		paragraph: [ html
				tbsButtonGroup: [ html anchor
						callback: [ self parent selectedStrategy largerIsBetter: false ];
						with: [ html tbsButton
								beDefault;
								bePrimaryIf: [ self parent selectedStrategy largerIsBetter not ];
								beExtraSmall;
								with: 'Smaller is better' ].
					html anchor
						callback: [ self parent selectedStrategy largerIsBetter: true ];
						with: [ html tbsButton
								beDefault;
								bePrimaryIf: [ self parent selectedStrategy largerIsBetter ];
								beExtraSmall;
								with: 'Larger is better' ] ] ]