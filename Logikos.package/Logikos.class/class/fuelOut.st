singleton
fuelOut
	<script>
	FLSerializer
		serialize: singleton
		toFileNamed: 'pharo-local/iceberg/logikos-web/logikos/examples/logikosDump.fuel'.
	FLSerializer
		serialize: (singleton dashboard: 'demo')
		toFileNamed: 'pharo-local/iceberg/logikos-web/logikos/examples/demoDashboard.fuel'