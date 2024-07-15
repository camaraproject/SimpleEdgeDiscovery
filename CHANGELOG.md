# Changelog Simple Edge Discovery

NOTE: 

## Table of contents

- [r0.11.0-rc.1 - rc](#r0110---rc1)
- [r0.9.3 - rc](#r093---rc)
- [r0.8.1](#r081)


**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each (pre-)release as follows:

* for the first alpha or release-candidate API version, all changes since the release of the previous public API version
* for subsequent alpha or release-candidate API versions, the delta with respect to the previous pre-release
* for a public API version, the consolidated changes since the release of the previous public API version

DISCLAIMER: in this example file, links and other content have been edited from the original to fit the example (hence links may be broken).

# r0.11.0-rc.1 

## Release Notes

This release contains the definition and documentation of
* simple-edge-discovery v0.11.0-rc.1, an initial public pre-release

The API definition(s) are based on
* Commonalities v0.4-rc.1
* Identity and Consent Management v0.2.0-rc.1

<!--In case of a repository with multiple APIs, list all APIs above, and for each API version that changed in this release, create a section as below, with the header 2: API-name API-version-x.y.z, and level 3 subsections. Also mention if an API in the repository is unchanged.-->

## simple-edge-discovery v0.11.0-rc.1

- API definition **with inline documentation**:
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r0110-rc.1/code/API_definitions/simple-edge-discovery.yaml&nocors)
  - [View it on Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r0110-rc.1/code/API_definitions/simple-edge-discovery.yaml)
  - OpenAPI [YAML spec file](https://raw.githubusercontent.com/camaraproject/SimpleEdgeDiscovery/r0110-rc.1/code/API_definitions/simple-edge-discovery.yaml)

### Fixed

- Changes made in latest versions of Commonalities/Identity and Consent management:
  - removal of current support for networkAccessIdentifier
  - device identifier may now be available from a 3-legged access token
  - error model alignment, including device identifier-rekated errors
  - implementation of consent guidelines
  - change of X-Correlator to x-correlator
  - Operation tag now follows agreed syntax
  - addition of x-camara-commonalities object on YAML

- Release management:
  - New API Readiness checklist format 

- Edge Cloud API family:
  - implementation of Edge Cloud Zones schema
  - renaming of MECPlatofmr to Edge Cloud Zone

- Documentation:
  - clarified distinction between device/server usage of the SED API
  - added User Story
  - added Gherkin .feature

### Full Changelog:
 
- Alignment with Commonalities 0.4-rc.1 and Identity and Consent Management 0.2-rc.1:
  - camaraproject/Commonalities/issues/233
  - camaraproject/Commonalities/issues/214
  - camaraproject/Commonalities/issues/213
  - camaraproject/Commonalities/issues/203
  - camaraproject/Commonalities/issues/177
  - camaraproject/Commonalities/issues/170
  - camaraproject/Commonalities/issues/152
  - camaraproject/SimpleEdgeDiscovery#22
  - camaraproject/SimpleEdgeDiscovery#21
  - camaraproject/SimpleEdgeDiscovery#20
  - camaraproject/SimpleEdgeDiscovery#15
  - camaraproject/EdgeCloud/pull/119

- Resource model name/structure changes aligned with EdgeCloud
 
  - camaraproject/SimpleEdgeDiscovery#14
  - camaraproject/SimpleEdgeDiscovery#17
  - camaraproject/SimpleEdgeDiscovery#18
  - camaraproject/EdgeCloud/issues/163

- Documentation:

  -  camaraproject/EdgeCloud/issues/207

- API Release Criteria

  - camaraproject/SimpleEdgeDiscovery#22
  - camaraproject/SimpleEdgeDiscovery#19
  - camaraproject/SimpleEdgeDiscovery#16


**Full Changelog**: https://github.com/camaraproject/SimpleEdgeDiscovery/compare/r1.4...r1.5

# r0.9.3 - rc

NOTE: this release candidate was made to allow a baseline implementation for MWC 2024

## Known issues

* This release does not incorporate the guidelines from Identity and Consent (ref issue #193 ) , which require a declaration of the  /.well-known/ OpenIDConnect configuration URI  Instead it declares 'oAuth2ClientCredentials: []` at the path and security schema level.

* minor issue: the `errorResponse` component object should be spelled as 'ErrorResponse` to confirm with API guidelines

* the path name `mec-platforms` is likely to change in v0.9.4

All issues will be resolved in 0.9.4.

A Github Discussion has been created for this release for any comments/questions (see 'Discussions' tab above.

Released by @Kevsy

## What's Changed
* Update Simple Edge Discovery flows by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/111
* release 0.9.0 of simple_edge_discovery.yaml by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/108
* Directory restructure per issue 124 by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/126
* Simple EDS API Aligned with commonalities by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/127
* Create README.md for Traffic Influence folder by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/133
* TI API Readiness Checklist by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/142
* Update README.md for TI API by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/139
* Create README.md for Workload Orchestration by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/137
* Create README.MD for Resource Management by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/132
* Create Traffic_Influence_Test.feature by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/143
* Minor patch (OAS version +documentation correction) by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/146
* More descriptive resources names in Simple Edge Discovery by @leochely in https://github.com/camaraproject/EdgeCloud/pull/153
* Traffic Influence V0.9.2 to Main repo by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/152
* Presentation for EdgeCloud Use Case MVP Proposal by @sergiofranciscoortiz in https://github.com/camaraproject/EdgeCloud/pull/155
* Added slack channel link by @javierlozallu in https://github.com/camaraproject/EdgeCloud/pull/156
* User mobility test - TI API v0.9.2 by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/160
* Test file updated for TI API v0.9.2 by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/161
* Create README.md for Discovery folder with intents by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/128
* EdgeCloud LifecycleManagement API proposal by @TEF-RicardoSerr in https://github.com/camaraproject/EdgeCloud/pull/154
* Agenda and meeting minutes links from Dec 2023 by @sergiofranciscoortiz in https://github.com/camaraproject/EdgeCloud/pull/171

## New Contributors
* @leochely made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/153
* @javierlozallu made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/156
* @TEF-RicardoSerr made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/154

**Full Changelog**: https://github.com/camaraproject/EdgeCloud/compare/v0.8.1...v0.9.3-rc

# r0.8.1
### This is the second pre-release of the CAMARA Edge Cloud  API suite
API [definitions](https://github.com/camaraproject/EdgeCloud/tree/main/code/API_definitions)
API [documentation](https://github.com/camaraproject/EdgeCloud/tree/main/documentation/SupportingDocuments/API_Documentation)
**Please note:**
-This is a pre-release version, and should be considered as a draft for further development
-There are bug fixes and breaking changes to be expected in later versions
-The release is suitable for test implementations, but it is not recommended for use in production environments

-The release incorporates the Traffic Influence API, and two of the four candidate 'Edge discovery that will be [harmonised](https://github.com/camaraproject/EdgeCloud/tree/main/documentation/SupportingDocuments/Harmonisation%20of%20APIs) into one coherent set

**Fixed issues**
***50

**PRs merged**
***87 
***80

## What's Changed
* Update MAINTAINERS.MD by @tuantranthai in https://github.com/camaraproject/EdgeCloud/pull/1
* Update MAINTAINERS.MD by @BpkCN in https://github.com/camaraproject/EdgeCloud/pull/2
* Update MAINTAINERS.MD by @lpcox in https://github.com/camaraproject/EdgeCloud/pull/3
* Update MAINTAINERS.MD by @ToshiWakayama-KDDI in https://github.com/camaraproject/EdgeCloud/pull/4
* Add TIM Contributors by @rafpas-tim in https://github.com/camaraproject/EdgeCloud/pull/6
* [EdgeCloud Maintainers] Add Larry Horner Intel by @petorre in https://github.com/camaraproject/EdgeCloud/pull/7
* Update MAINTAINERS.MD by @eric-murray in https://github.com/camaraproject/EdgeCloud/pull/8
* Update MAINTAINERS.MD by @gunjald in https://github.com/camaraproject/EdgeCloud/pull/9
* Update MAINTAINERS.MD by @shilpa-padgaonkar in https://github.com/camaraproject/EdgeCloud/pull/11
* Contributions by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/12
* Update MAINTAINERS.MD by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/13
* Update MAINTAINERS.MD by @SyeddR in https://github.com/camaraproject/EdgeCloud/pull/15
* Update MAINTAINERS.MD by @kevin8xu in https://github.com/camaraproject/EdgeCloud/pull/16
* Update MAINTAINERS.MD by @emil-cheung in https://github.com/camaraproject/EdgeCloud/pull/17
* Update MOM - 20220719.md by @snoopalex9 in https://github.com/camaraproject/EdgeCloud/pull/22
* Proposal - Edge Cloud Repository Organization by @AureMG in https://github.com/camaraproject/EdgeCloud/pull/25
* Update MOM - 2020816.md by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/32
* Update MAINTAINERS.MD by @PrashantGDT in https://github.com/camaraproject/EdgeCloud/pull/33
* Add files via upload by @ThomasEXR in https://github.com/camaraproject/EdgeCloud/pull/34
* Update MOM_Convergence - 202209160.md by @ToshiWakayama-KDDI in https://github.com/camaraproject/EdgeCloud/pull/41
* Update edge_terminology.md by @gunjald in https://github.com/camaraproject/EdgeCloud/pull/42
* Traffic Influence API proposal by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/39
* Traffic Influence stable YAML and API Documentation by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/46
* Update simple_edge_discovery.yaml by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/48
* Create Simple_Edge_Discovery.md by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/49
* Create describing and harmonising the Edge APIs by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/52
* EdgeXR App Apis by @gainsley in https://github.com/camaraproject/EdgeCloud/pull/26
* EdgeXR App session and discovery APIs by @gainsley in https://github.com/camaraproject/EdgeCloud/pull/27
* Create EdgeCloudApi_v0.0.5.yaml by @gunjald in https://github.com/camaraproject/EdgeCloud/pull/21
* Update and rename describing and harmonising the Edge APIs to describ… by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/55
* Moved intent mapping inline and removed table by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/58
* Update README.md by @crissancas in https://github.com/camaraproject/EdgeCloud/pull/61
* Expanded intents, fixed typo by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/69
* developer journey proposal by @maheshc01 in https://github.com/camaraproject/EdgeCloud/pull/66
* add EdgeXR intents to harmonising the Edge APIs doc by @gainsley in https://github.com/camaraproject/EdgeCloud/pull/70
* Updates following feedback from Orange by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/73
* Corrected version to 0.8.0 as agreed in Feb call by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/75
* Corrected version to 0.8.0 as agreed in Feb call by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/76
* Added crissancas by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/72
* Update README.MD by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/44
* Update MAINTAINERS.MD by @FredericFi in https://github.com/camaraproject/EdgeCloud/pull/45
* Add full EdgeXR NorthBound APIs by @gainsley in https://github.com/camaraproject/EdgeCloud/pull/71
* Update describing and harmonising the Edge APIs.md by @gunjald in https://github.com/camaraproject/EdgeCloud/pull/65
* Update REARDME.md to include Traffic Influnce by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/67
* Fix DCO by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/57
* Merged GSMA intents by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/77
* Create Edge Model by @ThomasEXR in https://github.com/camaraproject/EdgeCloud/pull/79
* Create next steps for harmonising the Edge Cloud APIs.md by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/78
* Update MEC exposure and experience management.yaml by @maheshc01 in https://github.com/camaraproject/EdgeCloud/pull/80
* Add files via upload by @crissancas in https://github.com/camaraproject/EdgeCloud/pull/88
* Update CODEOWNERS by @FabrizioMoggio in https://github.com/camaraproject/EdgeCloud/pull/97
* Meeting Minutes from subgroup meeting 25th April by @crissancas in https://github.com/camaraproject/EdgeCloud/pull/96
* Updated to CamelCase by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/87
* Fixed #36 by @Kevsy in https://github.com/camaraproject/EdgeCloud/pull/89
* Update CODEOWNERS by @sergiofranciscoortiz in https://github.com/camaraproject/EdgeCloud/pull/98
* Create ProjectCharter_EdgeSelection_ApplicationLifecycle_Subgroup.md by @ThomasEXR in https://github.com/camaraproject/EdgeCloud/pull/90

## New Contributors
* @tuantranthai made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/1
* @BpkCN made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/2
* @lpcox made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/3
* @ToshiWakayama-KDDI made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/4
* @rafpas-tim made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/6
* @petorre made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/7
* @eric-murray made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/8
* @gunjald made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/9
* @shilpa-padgaonkar made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/11
* @Kevsy made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/12
* @SyeddR made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/15
* @kevin8xu made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/16
* @emil-cheung made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/17
* @snoopalex9 made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/22
* @AureMG made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/25
* @PrashantGDT made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/33
* @ThomasEXR made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/34
* @gainsley made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/26
* @crissancas made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/61
* @maheshc01 made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/66
* @FredericFi made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/45
* @sergiofranciscoortiz made their first contribution in https://github.com/camaraproject/EdgeCloud/pull/98

**Full Changelog**: https://github.com/camaraproject/EdgeCloud/commits/v0.8.1
