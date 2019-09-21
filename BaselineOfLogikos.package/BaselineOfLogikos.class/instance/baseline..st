baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				bootstrap: spec;
				bootstrapSkeleton: spec;
				seasideUtilities: spec;
				neoJSON: spec.
			spec package: 'JSCharts'.
			spec
				package: 'AHP'
				with: [ spec
						requires:
							#('Seaside3' 'Seaside-REST-Core' 'Bootstrap' 'Bootstrap-Skeleton' 'NeoJSON' 'Seaside-Utilities') ].
			spec
				package: 'Logikos'
				with: [ spec requires: #('AHP' 'JSCharts') ].
			spec postLoadDoIt: #postLoadActions ]