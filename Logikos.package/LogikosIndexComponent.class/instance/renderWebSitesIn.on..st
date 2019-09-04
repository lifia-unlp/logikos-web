rendering-items
renderWebSitesIn: aListOfUrlStrings on: html
	| url |
	aListOfUrlStrings
		do: [ :each | 
			url := each asZnUrl.
			html anchor
				url: (ZnUrl fromString: url host defaultScheme: url scheme);
				target: '_new';
				with: url host ]
		separatedBy: [ html text: ', ' ]