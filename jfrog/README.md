# Setup (before pushing the source)
## Artifactory Repos
<!-- - Quick Setup -> Maven -->
<!-- - Check "Handle Snapshots" in "libs-release-local" -->
- Create "mvn-dev-local" local repo
  - Package Type: maven
  - Repository Key: mvn-dev-local
  - Enable Indexing In Xray: On
- Create "mvn-qa-local" local repo
  - Package Type: maven
  - Repository Key: mvn-qa-local
  - Enable Indexing In Xray: On
- Create "mvn-dev-local" local repo
  - Package Type: maven
  - Repository Key: mvn-prod-local
  - Enable Indexing In Xray: On
- Create "mvn-dev" virtual repo
  - Package Type: maven
  - Repository Key: mvn-dev
  - Repositories: mvn-dev-local, jcenter
  - Default Deployment Repository: mvn-dev
- Create "mvn-qa" virtual repo
  - Package Type: maven
  - Repository Key: mvn-qa
  - Repositories: mvn-qa-local, jcenter
  - Default Deployment Repository: mvn-qa
- Create "mvn-prod" virtual repo
  - Package Type: maven
  - Repository Key: mvn-prod
  - Repositories: mvn-prod-local, jcenter
  - Default Deployment Repository: mvn-prod
- Create "generic-local" local repo
<!-- - Create "generic-dev-local" local repo
- Create "generic-qa-local" local repo
- Create "generic-prod-local" local repo -->
## Pipelines Integration
(Check "Any Pipeline Source" for Assing Pipelines to this Integration)
- kirasoa_artifactory
  - Name: kirasoa_artifactory
  - Integration Type: Artifactory
  - url: https://kirasoa.jfrog.io/artifactory
  - User: <username>
  - API Key: <password>
- public_github
  - Name: public_github
  - Integration Type: GitHub
  - Token: <github_token>

# Setup (after pushing the source)
## Pipeline Source
- Single Branch
  - Integration: public_github
  - Repository Full Name: tsuyo/java-native-cli-graalvm-picocli
  - Branch: main
  - Pipeline Config File Filter: jfrog/pipelines\..*\.yml
