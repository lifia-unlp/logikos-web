accessing
ensureItemSpace: aSpaceName
	(self items includesKey: aSpaceName)
		ifFalse: [ self items at: aSpaceName put: Dictionary new ]