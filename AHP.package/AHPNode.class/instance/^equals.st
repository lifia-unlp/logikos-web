comparing
= anotherNode
	"= is shallow, I only compare my name, the names of my nodes, and the comparissons among my nodes (based on their names)"

	^ name = anotherNode name & (self comparesLike: anotherNode)