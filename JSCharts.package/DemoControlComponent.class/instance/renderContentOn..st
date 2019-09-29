rendering
renderContentOn: html
	html div
		id: self rootTagId;
		with: [ self ajaxButtonLabeled: 'a' callback: [ self optionA ] on: html.
			html space.
			self ajaxButtonLabeled: 'b' callback: [ self optionB ] on: html ]