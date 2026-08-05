# Changelog SimpleEdgeDiscovery

<!-- TOC:START -->
## Table of Contents
- [r3.1](#r31)
<!-- TOC:END -->

**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for an alpha release, the delta with respect to the previous release
* for the first release-candidate, all changes since the last public release
* for subsequent release-candidate(s), only the delta to the previous release-candidate
* for a public release, the consolidated changes since the previous public release

# r3.1

## Release Notes

This release candidate contains the definition and documentation of
* simple-edge-discovery 2.1.0-rc.2

The API definition(s) are based on
* Commonalities 0.8.0
* Identity and Consent Management 0.5.0

## simple-edge-discovery 2.1.0-rc.2

**simple-edge-discovery 2.1.0-rc.2 is a release-candidate version of this API.**

Changes documented below are compared to version 2.0.1.

- API definition **with inline documentation**:
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r3.1/code/API_definitions/simple-edge-discovery.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r3.1/code/API_definitions/simple-edge-discovery.yaml)
  - OpenAPI [YAML spec file](https://github.com/camaraproject/SimpleEdgeDiscovery/blob/r3.1/code/API_definitions/simple-edge-discovery.yaml)

### Breaking changes

* N/A

### Added

* N/A

### Changed

* docs: update consent text and mermaid diagram actors in User Story by @Kevsy in https://github.com/camaraproject/SimpleEdgeDiscovery/pull/195

### Fixed

* fix: add explicit type: object to DeviceResponseBody (S-016) by @hdamker in https://github.com/camaraproject/SimpleEdgeDiscovery/pull/154

* fix: fixed validation warnings for `info.description`, `apiRoot` and string `maxLength` constraints by @Kevsy in https://github.com/camaraproject/SimpleEdgeDiscovery/pull/179

* fix: minor typo in AuthZ/AuthN text in template by @Kevsy in https://github.com/camaraproject/SimpleEdgeDiscovery/pull/181

* fix: align x-correlator references with Commonalities by @hdamker in https://github.com/camaraproject/SimpleEdgeDiscovery/pull/185

* fix: feature schema reference from `DeviceIpv4Addr` to `DeviceIpv4Add… by @Kevsy in https://github.com/camaraproject/SimpleEdgeDiscovery/pull/193

### Removed

* N/A

**Full Changelog**: https://github.com/camaraproject/SimpleEdgeDiscovery/compare/r2.3...r3.1

