accessing
ensureItemSpace: aSpaceName
	(items includesKey: aSpaceName)
		ifFalse: [ items at: aSpaceName put: Dictionary new ]