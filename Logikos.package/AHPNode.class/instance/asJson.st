converting
asJson
	^ NeoJSONWriter toString: (self asDictionaryWithPrioritiesIn: nil)