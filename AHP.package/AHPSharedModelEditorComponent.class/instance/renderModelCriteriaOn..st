rendering
renderModelCriteriaOn: html
	html break.
	html paragraph: [ html label: 'Criteria' ].
	html render: criteriaHierarchyComponent