rendering
renderCriteriaOn: html
	self model parents
		ifEmpty: [ html heading
				level: 4;
				with: 'Criteria' ]
		ifNotEmpty: [ html heading
				level: 4;
				with: 'Sub-criteria' ].
	html render: criteriaHierarchyComponent