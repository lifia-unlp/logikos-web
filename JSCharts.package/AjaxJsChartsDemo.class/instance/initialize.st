initialization
initialize
	super initialize.
	chartComponent := PieChartSubComponent new.
	controlComponent := DemoControlComponent new.
	data := chartComponent data.
	controlComponent data: data.
	data := Dictionary new