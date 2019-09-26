private
propertyValueCommentFor: each
	^ ' - ',self parent selectedLeafNode name , ': ' , ((self propertyValueStringFor: each) ifEmpty: [ 'not set' ])