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
				package: 'Logikos'
				with: [ spec
						requires:
							#('Seaside3' 'Seaside-REST-Core' 'Bootstrap' 'Bootstrap-Skeleton' 'NeoJSON' 'Seaside-Utilities''JSCharts') ].
			spec postLoadDoIt: #postLoadActions ]