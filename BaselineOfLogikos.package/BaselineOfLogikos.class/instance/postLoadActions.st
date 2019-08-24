baseline
postLoadActions
	"Start a Server on 8080 and Setup Repository"

	GTPlayground
		edit:
			'"Evaluate the following expresion to start the server on port 8080"
				
ZnZincServerAdaptor startOn: 8080.
WAAdmin register: AHPAPI at: ''logikos-api''.
(WAAdmin register:  AHPLandingComponent  asApplicationAt: ''logikos'')
      addLibrary: JQDeploymentLibrary;
      addLibrary:  TBSDeploymentLibrary.
Smalltalk snapshot: true andQuit: false.

"You can access your server at http://localhost:8080/logikos
Your access code is ''entrar'' without the single quotes"
'
		label: 'Logikos'