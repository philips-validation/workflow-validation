# workflow-validation

This repos contains a few workflows to perform validation

## test-triggers.yml

Workflow is trigger on commit (push) and on Pull request to meet :   
**Requirements**:  FU-302 - FU-306 and FU-307    
**Test Specifications**: GH_TC_32   
**Triggered by**: https://github.com/philips-internal/github-validation-tests/blob/master/.github/workflows/trigger-actions-tests.yml    
**Required Setup**: 
- 2 branches: ``master`` / ``test-pull-request``
- a mergeable Pull Request: to pull ``test-pull-request`` into ``master``
- in the ``master`` branch a file ``TRIGGERS-COMMIT.md``
- in the ``test-pull-request`` branch a file ``TRIGGERS-PR.md`` 

## failing.yml / reusable-workflow.yml

The workflow is triggered manually (on: workflow_dispatch) to meet:   
**Requirements**: FU-302 / FU-304 / FU-305 / FU-311 / FU-314 / FU-318   
**Test Specifications**: GH_TC_31   
**Triggered by**: https://github.com/philips-internal/github-validation-tests/blob/master/cypress/e2e/tests/GHTC-31.cy.js   
**Required Setup**: 
- file ``non-existing-file`` should **NOT** exist in repository
- workflow ``failing.yml`` calls the reusable ``workflow _reusable_workflow.yml``

## successful.yml

The workflow is triggered manually (on: workflow_dispatch) to meet:   
**Requirements**: FU-302 / FU-304 / FU-305 / FU-311 / FU-314 / FU-319 / FU-320 / FU-321
**Test Specifications**: GH_TC_32  
**Triggered by**: https://github.com/philips-internal/github-validation-tests/blob/master/cypress/e2e/tests/GHTC-32.cy.js   
**Required Setup**: 
- file ``README.md`` should  exist in repository
- workflow ``successful.yml`` generates a tar file of the README.md file and upload the tar file as artifact

