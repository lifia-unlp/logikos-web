accessing
addItem: anItem at: aSpaceName
	self ensureItemSpace: aSpaceName.
	(self items at: aSpaceName) at: anItem url put: anItem