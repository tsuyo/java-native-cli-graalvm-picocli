# Setup (before pushing the source)
## Artifactory Repos
- Quick Setup -> Maven
  - Check "Handle Snapshots" in "libs-release-local"
- Create "libs-staging-local" local repo
  - Package Type: maven
  - Repository Key: libs-staging-local
- Create "generic-local" local repo
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
