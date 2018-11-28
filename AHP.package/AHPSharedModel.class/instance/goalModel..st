initialization
goalModel: anObject
	goalModel := anObject.
	smartJudgmentStrategies := Dictionary new.
	title := goalModel name.
	goalModel name: 'Goal'.
	description := ''.
	objectType := 'https://www.w3.org/2002/07/owl#Thing'