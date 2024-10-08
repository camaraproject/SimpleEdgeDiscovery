Feature: CAMARA Simple Edge Discovery API - Operation readClosestEdgeCloudZone

  Background:
    Given an environment at "apiRoot"
    And the resource "{path_resource}"                                                     |
    And the header "Content-Type" is set to "application/json"
    And the header "Authorization" is set to a valid access token
    And the header "x-correlator" is set to a UUID value

  @simple_edge_discovery_1_success
  Scenario: Successful request
    Given The API Client makes a GET request to the {path_resource}
    When The request header includes a valid device identifier
    And The querystring filter value is 'closest'
    Then Response code is 200 OK
    And The response is an EdgeCloudZones object

  @simple_edge_discovery_2_error_invalid_querystring
  Scenario: Error because filter parameter is invalid
    Given the API Client makes a GET request to the {path_resource}
    When The filter parameter is invalid
    Then Response code is 400 INVALID_QUERYSTRING
    
  @simple_edge_discovery_3_error_device_identifiers_not_supported
  Scenario: Error because the device identifiers cannot be supported
    Given the API Client makes a GET request to the {path_resource}
    When The device identifier(s) are not supported by the implementation
    Then Response code is 422 UNSUPPORTED_DEVICE_IDENTIFIERS
    
  @simple_edge_discovery_4_error_device_cannot_be_identified
  Scenario: Error because the device cannot be identified
    Given the API Client makes a GET request to the {path_resource}
    When The device identifier(s) cannot be matched to a device
    Then Response code is 422 UNIDENTIFIABLE_DEVICE

  @simple_edge_discovery_5_error_device_identifiers_mismatch
  Scenario: Error because provided device indentifiers are inconsistent
    Given the API Client makes a GET request to the {path_resource}
    When The provided device identifiers are not consistent
    Then Response code is 422 DEVICE_IDENTIFIERS_MISMATCH
    
  @simple_edge_discovery_6_error_invalid_access_token_context
  Scenario: Error because access token context is invalid
    Given the API Client makes a GET request to the {path_resource}
    When The device identifiers are not consistent with access token
    Then Response code is 403 INVALID_TOKEN_CONTEXT
    
  @simple_edge_discovery_7_error_service_not_applicable
  Scenario: Error because the device is not connected to an edge-supporting network
    Given the API Client makes a GET request to the {path_resource}
    When The identified device is not connected to an edge-supporting network
    Then Response code is 422 DEVICE_NOT_APPLICABLE

  @simple_edge_discovery_8_error_operator_cannot_resolve
  Scenario: Internal error at operator
    Given the API Client makes a GET request to the {path_resource}
    When The operator is unable to resolve due to internal error
    Then Response code is 500 INTERNAL
