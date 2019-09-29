rendering
ajaxButtonLabeled: label callback: aCallback on: html
	html button
		onClick:
			(html jQuery ajax
				callback: aCallback;
				onComplete: (self hooksDependentsOn: html));
		bePush;
		with: label