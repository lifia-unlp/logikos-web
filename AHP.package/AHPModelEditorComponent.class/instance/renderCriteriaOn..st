rendering
renderCriteriaOn: html
	self model parents
		ifEmpty: [ html label with: 'Criteria' ]
		ifNotEmpty: [ html label: 'Sub-criteria' ].
	html render: criteriaHierarchyComponent