# README#

This is Logikós backend server, he entry point to the  Logikós platform. The tools offers the following functionality:

* Sstore and browse available extraction templates (the templates are defined using the ["templates editor" web-extension](https://bitbucket.org/logikos-web/templates-editor-webext/src/master/)). 
* Store, browse and curate information items (collected using the the ["items collector" web-extension](https://bitbucket.org/logikos-web/items-collector-webext/src/master/)
* Create and use reusable multi-criteria (AHP) decision profiles to rank the collected information items.

# Building  #

This tool is built as a web application and a REST API. Is has been implemented in Pharo Smalltalk.

To build and install it, follow this steps.

1. Obtain Pharo 7.1
2. In a playground, evaluate the next expresion and then follow instructions on screen to run and deploy

```Smalltalk
Metacello new
  baseline: 'Logikos';
  repository: 'bitbucket://logikos-web/logikos';
  onConflictUseLoaded;
  load.
```

# License #

The Logikós backend server is offered under the [GPL v3.0 lincense](https://www.gnu.org/licenses/gpl-3.0.en.html).  
