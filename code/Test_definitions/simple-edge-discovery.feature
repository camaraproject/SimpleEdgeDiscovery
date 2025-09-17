Feature: CAMARA Simple Edge Discovery API, v2.0.0 - Operation readClosestEdgeCloudZone

  Background:
    Given an environment at "apiRoot"
    And the resource "/simple-edge-discovery/v2/retrieve-closest-edge-cloud-zone"                                                |
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

  @simple_edge_discovery_error_scenario_01_404_device_cannot_be_identified
  Scenario: Error because the device cannot be identified
    Given that the device cannot be identified from the access token
    And the request body property "$.device" is compliant with the request body schema but does not identify a valid device
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 404
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 404
    And the response property "$.code" is "IDENTIFIER_NOT_FOUND"
    And the response property "$.message" contains a user friendly text

  @simple_edge_discovery_error_scenario_02_422_identifiers_not_supported
  Scenario: Error because the provided identifiers cannot be supported
    Given the request "readClosestEdgeCloudZone" is sent
    When the identifier(s) provided are not supported by the implementation
    Then the response status code is 422
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 422
    And the response property "$.code" is "UNSUPPORTED_IDENTIFIER"
    And the response property "$.message" contains a user friendly text

  @simple_edge_discovery_error_scenario_03_422_missing_identifier
  Scenario: Error because no identifier was provided
    Given the request "readClosestEdgeCloudZone" is sent
    When No identifier(s) are provided and cannot be derived from any 3-legged access token
    Then the response status code is 422
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 422
    And the response property "$.code" is "MISSING_IDENTIFIER"
    And the response property "$.message" contains a user friendly text

  @simple_edge_discovery_error_scenario_04_403_invalid_access_token_context
  Scenario: Error because access token context is invalid
    Given the request "readClosestEdgeCloudZone" is sent
    When the device identifiers are not consistent with access token
    Then the response status code is 403
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 403
    And the response property "$.code" is "INVALID_TOKEN_CONTEXT"
    And the response property "$.message" contains a user friendly text

  @simple_edge_discovery_error_scenario_05_422_service_not_applicable
  Scenario: Error because the device is not connected to an edge-supporting network
    Given the request "readClosestEdgeCloudZone" is sent
    When the identified device is not connected to an edge-supporting network
    Then the response status code is 422
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 422
    And the response property "$.code" is "SERVICE_NOT_APPLICABLE"
    And the response property "$.message" contains a user friendly text

# Generic 400 errors

  @simple_edge_discovery_error_scenario_06_400_bad_request
  Scenario: Invalid Argument. Generic Syntax Exception
    Given the request body is set to any value which is not compliant with the schema at "/components/schemas/RequestBody"
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 400
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @simple_edge_discovery_error_scenario_07_400_no_request_body
  Scenario: Missing request body
    Given the request body is not included
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 400
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @simple_edge_discovery_error_scenario_08_400_device_empty
  Scenario: The device value is an empty object
    Given the request body property "$.device" is set to: {}
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 400
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @simple_edge_discovery_error_scenario_09_400_device_identifiers_not_schema_compliant
  # Test every type of identifier even if not supported by the implementation
  # Note that device schema validation errors (if any) should be thrown even if a 3-legged access token is being used
  Scenario Outline: Some device identifier value does not comply with the schema
    Given the request body property "<device_identifier>" does not comply with the OAS schema at "<oas_spec_schema>"
    And a 2-legged or 3-legged access token is being used
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 400
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

    Examples:
      | device_identifier                | oas_spec_schema                             |
      | $.device.phoneNumber             | /components/schemas/PhoneNumber             |
      | $.device.ipv4Address             | /components/schemas/DeviceIpv4Addr          |
      | $.device.ipv6Address             | /components/schemas/DeviceIpv6Address       |
      | $.device.networkAccessIdentifier | /components/schemas/NetworkAccessIdentifier |

  # The maximum is considered in the schema so a generic schema validator may fail and generate a 400 INVALID_ARGUMENT without further distinction, and both could be accepted
  @simple_edge_discovery_error_scenario_10_400_out_of_range_port
  Scenario: Out of range port
    Given the request body property  "$.device.ipv4Address.publicPort" is set to a value not between 0 and 65535
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 400
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 400
    And the response property "$.code" is "OUT_OF_RANGE" or "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  # Generic 401 errors

  @simple_edge_discovery_error_scenario_11_401_no_authorization_header
  Scenario: No Authorization header
    Given the header "Authorization" is removed
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 401
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text

  # In this case both codes could make sense depending on whether the access token can be refreshed or not
  @simple_edge_discovery_error_scenario_12_401_expired_access_token
  Scenario: Expired access token
    Given the header "Authorization" is set to an expired access token
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 401
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text

  @simple_edge_discovery_error_scenario_13_401_invalid_access_token
  Scenario: Invalid access token
    Given the header "Authorization" is set to an invalid access token
    When the request "readClosestEdgeCloudZone" is sent
    Then the response status code is 401
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text
