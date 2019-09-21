rendering
renderTypeOn: html
	html label: 'Type'.
	html
		paragraph: [ self model isTangible
				ifTrue: [ html text: 'Tangible' ]
				ifFalse: [ html text: 'Intangible' ].
			html space.
			html anchor
				callback: [ self model toggleTangible ];
				with: [ html tbsGlyphIcon iconRetweet ] ].
	html tbsAlert
		beInfo;
		with: [ html
				emphasis: 'Tangile criteria';
				text:
					' take concrete, objective values, such as $100, or 4GB. You can enable smart judgement for tangible criteria. Tangible criteria cannot have sub-criteria.';
				break;
				emphasis: ' Intangible criteria';
				text:
					', take abstract, subjective values such as how confortable something is. Smart judgement is not possible on intangible criteria. Intangible criteria can have sub-criteria' ]