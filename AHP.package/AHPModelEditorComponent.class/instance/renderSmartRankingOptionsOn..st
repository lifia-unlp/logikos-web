rendering
renderSmartRankingOptionsOn: html
	html label: 'Smart judgment support'.
	self model smartJudgementStrategy
		ifNil: [ html tbsAlert
				beWarning;
				with: [ html
						text: 'Smart judgment is not available for ';
						strong: name;
						text:
							'. Configure it to simplify the user''s decisión task.' ].
			html anchor
				callback: [ self configureSmartJudgment ];
				with: [ html tbsButton
						beDefault;
						beExtraSmall;
						with: 'Configure' ] ]
		ifNotNil: [ html
				paragraph: [ html
						text: 'Currently active smart judgment is ';
						strong: self model smartJudgementStrategy name;
						text: '. ' , self model smartJudgementStrategy comment ].
			html anchor
				callback: [ self clearSmartJudgment ];
				with: [ html tbsButton
						beDefault;
						beSmall;
						with: 'Clear' ] ]