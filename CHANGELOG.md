# Changelog Simple Edge Discovery

NOTE: 

## Table of contents

- **[r1.1 - rc](#r11---rc)**
- [r0.9.3 - rc](#r093---rc)
- [r0.8.1](#r081)


**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each (pre-)release as follows:

* for the first alpha or release-candidate API version, all changes since the release of the previous public API version
* for subsequent alpha or release-candidate API versions, the delta with respect to the previous pre-release
* for a public API version, the consolidated changes since the release of the previous public API version



NOTE: SimpleEdgeDiscovery is part of the EdgeCloud API family, and was previously developed within the [EdgeCloud](https://github.com/camaraproject/EdgeCloud) repository. Two releases were made within EdgeCloud, v0.81 and r0.9.3-rc. These releases also include the other EdgeCloud APIs and materials, so the changelog below highlights only the changes related to SimpleEdgeDiscovery. Further information and links to the releases in EdgeCloud can be found below.

# r1.1 - rc

## Release Notes

This release contains the definition and documentation of
* simple-edge-discovery v0.11.0-rc.1, a release-candidate pre-release

The API definition(s) are based on
* Commonalities v0.4.0-rc.1
* Identity and Consent Management v0.2.0-rc.1

<!--In case of a repository with multiple APIs, list all APIs above, and for each API version that changed in this release, create a section as below, with the header 2: API-name API-version-x.y.z, and level 3 subsections. Also mention if an API in the repository is unchanged.-->

## simple-edge-discovery v0.11.0-rc.1

simple-edge-discovery v0.11.0-rc.1 is a new release candidate version with significant changes compared to the previous version v0.9.3-rc and is not backward compatible. 

### Main changes
- This version is primarily to align with the changes to Commonalities 0.4-rc.1 and Identity and Consent Management v0.2.0-rc.1, and also includes changes to resource names agreed across the [EdgeCloud](https://github.com/camaraproject/EdgeCloud) API family. The scope of release (issues closed) is available in [#3](https://github.com/camaraproject/SimpleEdgeDiscovery/issues/3).

- API definition **with inline documentation**:
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r1.1/code/API_definitions/simple-edge-discovery.yaml&nocors)
  - [View it on Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r1.1/code/API_definitions/simple-edge-discovery.yaml)
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
