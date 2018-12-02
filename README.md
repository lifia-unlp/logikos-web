# README #

This is the *shared decision profiles repository* for the Logikós platform. The tools offers the following functionality:

* Created AHP decision models (goal, criteria and subcriteria) with help of a basic pairwise comparison tool. Priorities are derives using the simplified (non-exact) approach. 
* Test those decision models in example decisions
* Attach *smart ranking strategies* (e.g., scales) to reduce the need of pairwise comparisons among alternatives
* Shared decision models (together with pre-configured smart ranking strategies) so they can be used from the other tools in the Logikós platform.

# Building  #

This tool is build as a web application and a REST API. Is has been implemented in Pharo Smalltalk.

To build and install it, follow this steps.

1. Obtain Pharo 6.1
2. In a playground, evaluate the next expresion and then follow instructions on screen to run and deploy

```Smalltalk
Metacello new
  baseline: 'AHP';
  repository: 'bitbucket://logikos-web/decision-profiles-repository';
  load.
```