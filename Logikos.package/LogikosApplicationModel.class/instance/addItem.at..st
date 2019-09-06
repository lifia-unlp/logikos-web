accessing
addItem: anItem at: aSpaceName
	self ensureItemSpace: aSpaceName.
	(items at: aSpaceName) at: anItem url put: anItem