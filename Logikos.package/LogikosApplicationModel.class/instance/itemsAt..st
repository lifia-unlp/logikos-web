accessing
itemsAt: aSpaceName
	self ensureItemSpace: aSpaceName.
	^ (items at: aSpaceName) values