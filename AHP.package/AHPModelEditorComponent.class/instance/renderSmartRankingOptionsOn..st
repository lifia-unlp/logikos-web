rendering
renderSmartRankingOptionsOn: html
	html heading
		level: 4;
		with: 'Smart judgment support'.
	self model smartJudgementStrategy
		ifNil: [ html
				paragraph:
					'Providing smart judgment support for this criteria will greatly help users.'.
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
						text: '. ' , self model smartJudgementStrategy comment ] .
					html anchor
				callback: [ self clearSmartJudgment ];
				with: [ html tbsButton
						beDefault;
						beSmall;
						with: 'Clear' ]]