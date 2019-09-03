*AHP
asBestGuessedNumber
	"tries to obtain a number considering only digits, period, and commas - nothing can be built, returns nil"

	^ [ (self select: [ :each | ($0 to: $9) , {$. . $,} includes: each ])
		asNumber ]
		on: Error
		do: [ nil ]