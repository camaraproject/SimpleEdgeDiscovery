# Changelog Simple Edge Discovery

NOTE: 

## Table of contents

- [r2.1 - rc](#r21---rc)
- [r1.3](#r13)
- [r1.2 - rc](#r12---rc)
- [r1.1 - rc](#r11---rc)
- [r0.9.3 - rc](#r093---rc)
- [r0.8.1](#r081)


**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for an alpha release, the delta with respect to the previous release
* for the first release-candidate, all changes since the last public release
* for subsequent release-candidate(s), only the delta to the previous release-candidate
* for a public release, the consolidated changes since the previous public release

NOTE: SimpleEdgeDiscovery is part of the EdgeCloud API Sub Project, and was previously developed within the [EdgeCloud](https://github.com/camaraproject/EdgeCloud) repository. Two releases were made within EdgeCloud, v0.81 and r0.9.3-rc. These releases also include the other EdgeCloud APIs and materials, so the changelog below highlights only the changes related to SimpleEdgeDiscovery. Further information and links to the releases in EdgeCloud can be found below.

# r2.1 - rc

This release candidate contains the definition and documentation of
* [simple-edge-discovery v2.0.0-rc.1]()

The API definition(s) are based on
* Commonalities v0.6.0-rc.1 (r3.2)
* Identity and Consent Management  v0.4.0-rc.1 (r3.2) 

It contains the **following breaking changes** compared to the last public release [r1.3](#r13):

* The API's single operation has been refactored from GET to POST
* The operation resource URI has changed from `/edge-cloud-zones?filter=closest` to `/retrieve-closest-edge-cloud-zone`
* One or more device identifiers must be passed either via a 3-legged access token or in the request body.

- API definition with inline documentation:
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r2.1/code/API_definitions/simple-edge-discovery.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r2.1/code/API_definitions/simple-edge-discovery.yaml)
  - [OpenAPI YAML spec file](https://github.com/camaraproject/SimpleEdgeDiscovery/blob/r2.1/code/API_definitions/simple-edge-discovery.yaml)

### Added

- [x] [Added DeviceResponse object #86](issues/86), [Pull Request #102](/pull/102)
- [x] [Added section to documentation on non-documented errors #87](issues/87), [Pull Request #102](/pull/112)

### Changed

- [x] [Refactored the API operation from GET to POST](issues/74), [Pull Request #78](/pull/78)
- [x] [Updated examples and usage description following refactoring to POST](/issues/75), [Pull Request #81](/pull/81)  
- [x] [Updated Gherkin `.feature` test scenarios to reflect change from GET to POST #79](issues/79)
- [x] [Refactored the operation's `200 OK` response to a `$ref` #76](issues/76)
- [x] [Refactored `x-correlator` schema to be a `$ref` and not defined inline #115](issues/115)
- [x] [Updated `x-correlator` pattern #88](issues/88), [Pull Request #88](/pull/88)
- [x] [Updated `x-camara-commonalities` version to `0.6` #99](issues/99)
- [x] [Updated Gherkin `.feature` to test for a valid `x-correlator` #111](issues/111)
      
### Removed

- [x] [Removed `401 AUTHENTICATION REQUIRED` error #84](issues/84), [Pull Request #90](/pull/90)
- [x] [Removed `422 IDENTIFIER MISMATCH` error #85](issues/85), [Pull Request #89](/pull/89) 
  


# r1.3

This release contains the definition and documentation of
* simple-edge-discovery v1.0.0, a stable public release.

The API definition(s) are based on
* Commonalities v0.4.0
* Identity and Consent Management v0.2.0

It contains the following changes compared to last public release [r0.9.3 - rc](#r093---rc):

### Added
  - Gherkin `.feature` file in Test_definitions
  - Implementation of ICM consent guidelines
  - Addition of `x-camara-commonalities` object to YAML
  - Documentation: added warning about use of `networkAccessIdentifier`, added User Story

### Changed
  - info.version to 1.0.0
  - version in servers.url to v1
  - Changed `mecplatforms` to  `EdgeCloudZones` in alignment with EdgeCloud API family 
  - Compliance with DeviceIdentifier schema
  - The device identifier may now be available from a 3-legged access token 
  - Change of `X-Correlator` to `x-correlator`
  - `Operation` tag now follows agreed syntax
  - Error model alignment, including device identifier-related errors
  - Documentation: updated the API Readiness Checklist
  - Documentation: clarified distinction between device/server usage of the SimpleEdgeDiscovery API
  - Documentation: replaced term 'MNO' with 'network operator'
  - Documentation: updated section on authentication and authorisation

### Removed
  - UUID format constraint from x-correlator 
  - 405 Method Not Allowed error response
  - Removed example for `networkAccessIdentifier`

### Fixed
  - Trailiing whitespace issues in YAML


 Changelog from r1.3 to r1.2 only: https://github.com/camaraproject/SimpleEdgeDiscovery/compare/r1.2...r1.3

# r1.2 - rc

This release contains the definition and documentation of
* simple-edge-discovery v0.11.0-rc.2, a release-candidate pre-release.

The API definition(s) are based on
* Commonalities v0.4.0-rc.2
* Identity and Consent Management v0.2.0-rc.2

It contains the following corrections compared to [r1.1 - rc](#r11---rc).

### Removed
  - UUID format constraint from x-correlator 
  - 405 Method Not Allowed error response

### Changed
  - documentation: replaced term 'MNO' with 'network operator'
  - documentation: updated section on authentication and authorisation

Full Changelog: https://github.com/camaraproject/SimpleEdgeDiscovery/compare/r1.1...r1.2


# r1.1 - rc

## Release Notes

This release contains the definition and documentation of
* simple-edge-discovery v0.11.0-rc.1, a release-candidate pre-release

The API definition(s) are based on
* Commonalities v0.4.0-rc.2
* Identity and Consent Management v0.2.0-rc.2

<!--In case of a repository with multiple APIs, list all APIs above, and for each API version that changed in this release, create a section as below, with the header 2: API-name API-version-x.y.z, and level 3 subsections. Also mention if an API in the repository is unchanged.-->

## simple-edge-discovery v0.11.0-rc.1

simple-edge-discovery v0.11.0-rc.1 is a new release candidate version with significant changes compared to the previous version v0.9.3-rc and is not backward compatible. 

### Main changes
- This version is primarily to align with the changes to Commonalities 0.4-rc.1 and Identity and Consent Management v0.2.0-rc.1, and also includes changes to resource names agreed across the [EdgeCloud](https://github.com/camaraproject/EdgeCloud) API family. The scope of release (issues closed) is available in [#3](https://github.com/camaraproject/SimpleEdgeDiscovery/issues/3).

- API definition **with inline documentation**:
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r1.1/code/API_definitions/simple-edge-discovery.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r1.1/code/API_definitions/simple-edge-discovery.yaml)
  - OpenAPI [YAML spec file](https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r1.1/code/API_definitions/simple-edge-discovery.yaml)
 
### Added
  - Gherkin `.feature` file in Test_definitions
  - Implementation of ICM consent guidelines
  - Addition of `x-camara-commonalities` object to YAML
  - Documentation: added warning about use of `networkAccessIdentifier`, added User Story

### Changed
  - Changed `mecplatforms` to  `EdgeCloudZones` in alignment with EdgeCloud API family 
  - Compliance with DeviceIdentifier schema
  - The device identifier may now be available from a 3-legged access token 
  - Change of `X-Correlator` to `x-correlator`
  - `Operation` tag now follows agreed syntax
  - Error model alignment, including device identifier-related errors
  - Updated the API Readiness Checklist to the new format
  - Documentation: clarified distinction between device/server usage of the SimpleEdgeDiscovery API

### Fixed
  - Trailiing whitespace issues in YAML
    
### Removed
  - Removed example for `networkAccessIdentifier`

### Full Changelog:
-  [https://github.com/camaraproject/SimpleEdgeDiscovery/compare/3094129..3ee66b1](https://github.com/camaraproject/SimpleEdgeDiscovery/compare/3094129..3ee66b1)

 _please note it is not possible to automatically compare across the EdgeCloud and SimpleEdgeDiscovery repositories, so this link compares the initial code commit to SimpleEdgeDiscovery with the commit for r1.1_

# r0.9.3 - rc

NOTE: this release candidate was made to allow a baseline implementation for MWC 2024, and was released in the EdgeCloud repository. Hence it includes the other EdgeCloud APIs/materials.
The release note is available [here](https://github.com/camaraproject/EdgeCloud/releases/tag/v0.9.3-rc), including Known Issues. There were no significant changes to SimpleEdgeDiscovery YAML in this release.

**Full Changelog**: https://github.com/camaraproject/EdgeCloud/compare/v0.8.1...v0.9.3-rc

# r0.8.1

Note: ths was released in the EdgeCloud repository, hence it includes the other EdgeCloud APIs/materials. The changes related to SimpleEdgeDiscovery are listed below. 
The release note is available [here](https://github.com/camaraproject/EdgeCloud/releases/tag/v0.9.3-rc).


### Fixed
- API versioning set to vx.y.z format, https://github.com/camaraproject/EdgeCloud/issues/50
- updated to CamelCase where required, https://github.com/camaraproject/EdgeCloud/pull/87 


**Full Changelog**: [https://github.com/camaraproject/EdgeCloud/commits/v0.8.1](https://github.com/camaraproject/EdgeCloud/commit/b427105f1f30485606a84c3db6d6d4eeb6c9cc02)
