private
read: aString as: aClass
	^ (NeoJSONReader on: aString readStream)
		mapInstVarsFor: LogikosItemTemplate;
		mapInstVarsFor: LogikosItem;
		nextAs: aClass