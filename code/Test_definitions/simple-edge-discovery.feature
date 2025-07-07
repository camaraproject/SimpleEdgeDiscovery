Feature: CAMARA Simple Edge Discovery API, v2.0.0-rc.1 - Operation readClosestEdgeCloudZone

  Background:
    Given an environment at "apiRoot"
    And the resource "/simple-edge-discovery/v2rc1/retrieve-closest-edge-cloud-zone"                                                |
    And the header "Content-Type" is set to "application/json"
    And the header "Authorization" is set to a valid access token
    And the header "x-correlator" complies with the schema at "#/components/schemas/XCorrelator"
    And the request body is compliant with the RequestBody schema defined by "#/components/schemas/RequestBody"

  @simple_edge_discovery_success_scenario_01_3-legged_token
  Scenario: Successful request with the device identified by the 3-legged access token
    Given the device is identified in the 3-legged access token
    When the request "readClosestEdgeCloudZone" is sent
    Then the response code is 200 OK
    And the response header "Content-Type" is "application/json"
    And the header "x-correlator" has the same value as the request header "x-correlator"
    And the response body complies with the schema defined by "#/components/responses/200Success"
    And the 200Success object includes the EdgeCloudZone object defined at "#/components/schemas/EdgeCloudZone"
    And the 200Success object omits the optional DeviceResponseBody object defined at "DeviceResponseBody"

  @simple_edge_discovery_success_scenario_02_device_identifier_in_request_body
  Scenario: Successful request with the device identified by the device identifier passed in the request body
    Given the device is identified by the device identifier passed in the request body
    When the request "readClosestEdgeCloudZone" is sent
    Then the response code is 200 OK
    And the response header "Content-Type" is "application/json"
    And the header "x-correlator" has the same value as the request header "x-correlator"
    And the response body complies with the schema defined by "#/components/responses/200Success"
    And the 200Success object includes the EdgeCloudZone object defined at "#/components/schemas/EdgeCloudZone"
    And the 200Success object includes the optional DeviceResponseBody object defined at "DeviceResponseBody"

  @simple_edge_discovery_error_scenario_01_device_cannot_be_identified
  Scenario: Error because the device cannot be identified
    Given the request "readClosestEdgeCloudZone" is sent
    When the provided identifier(s) cannot be matched to a device
    Then Response code is 404 IDENTIFIER_NOT_FOUND

  @simple_edge_discovery_error_scenario_02_identifiers_not_supported
  Scenario: Error because the provided identifiers cannot be supported
    Given the request "readClosestEdgeCloudZone" is sent
    When the identifier(s) provided are not supported by the implementation
    Then Response code is 422 UNSUPPORTED_IDENTIFIER

  @simple_edge_discovery_error_scenario_03_missing_identifier
  Scenario: Error because no identifier was provided
    Given the request "readClosestEdgeCloudZone" is sent
    When No identifier(s) are provided and cannot be derived from any 3-legged access token
    Then Response code is 422 MISSING_IDENTIFIER

  @simple_edge_discovery_error_scenario_04_invalid_access_token_context
  Scenario: Error because access token context is invalid
    Given the request "readClosestEdgeCloudZone" is sent
    When the device identifiers are not consistent with access token
    Then Response code is 403 INVALID_TOKEN_CONTEXT

  @simple_edge_discovery_error_scenario_05_service_not_applicable
  Scenario: Error because the device is not connected to an edge-supporting network
    Given the request "readClosestEdgeCloudZone" is sent
    When the identified device is not connected to an edge-supporting network
    Then Response code is 422 SERVICE_NOT_APPLICABLE

  @simple_edge_discovery_error_scenario_06_operator_cannot_resolve
  Scenario: Internal error at operator
    Given the request "readClosestEdgeCloudZone" is sent
    And the device has been succesfully identified
    When the operator is unable to resolve due to internal error
    Then the response code is 500 INTERNAL
