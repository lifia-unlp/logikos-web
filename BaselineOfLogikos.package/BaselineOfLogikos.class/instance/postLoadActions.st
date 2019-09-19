baseline
postLoadActions
	"Start a Server on 8080 and Setup Repository"
	 
	self startServer.

	GTPlayground
		edit:
			'
"You can access your server at http://localhost:8080/
Your access code is the empty string"

"To change the port, use your Seaside control panel"

"The method #startServer in class BaselineOfLogikos shows 
how to configure and start the server"

'
		label: 'Logikos'