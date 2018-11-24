baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				bootstrap: spec;
				bootstrapSkeleton: spec;
				neoJSON: spec.
			spec
				package: 'AHP'
				with: [ spec
						requires: #('Seaside3' 'Seaside-REST-Core' 'Bootstrap' 'Bootstrap-Skeleton' 'NeoJSON') ].
			spec postLoadDoIt: #postLoadActions ]