hooks
renderReleaseInfoOn: html
	super renderReleaseInfoOn: html.
	html
		paragraph: [ html anchor
				callback: [ self fuelOut ];
				with: [ html
						small: [ html tbsGlyphIcon iconExport.
							html space.
							html text: 'Export fuel' ] ] ]