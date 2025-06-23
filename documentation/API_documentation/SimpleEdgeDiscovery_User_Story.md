# Simple Edge Discovery API User Story

| **Item** | **Details** |
| ---- | ------- |
| ***Summary*** | As an application developer belonging to an enterprise, I want to discover (using either my application server/backend service, or an HTTPS application client on the end-user device) the closest Edge Cloud Zone to a given end-user's device. |
| ***Roles, Actors and Scope*** | **Roles:** Customer:User<br> **Actors:** Application service providers, network operators, application developers. The API allows a check to see if end-user consent is required: if consent is required, the end-user will be an actor in the consent flow. <br>
 **Scope:** | Get the name of the Edge Cloud Zone closest to a given end-user's device |
| ***Pre-conditions*** |The preconditions are listed below:<br><ol><li>The Customer:BusinessManager and Customer:Administrator have been onboarded to the CSP's API platform.</li><li>The Customer:BusinessManager has successfully subscribed to the Simple Edge Discovery product from the product catalog.</li><li>The Customer:Administrator has onboarded the Customer:User to the platform.</li>|
| ***Activities/Steps*** | **Starts when:** The customer application server/client makes a an HTTPS POST request to the Simple Edge Discovery API to query the closest Edge Cloud Zone to the target device (an end-user device). The target device is either identified in the 3-legged access token where supported, or explicitly identified in the encrypted POST request body.<br>**Ends when:** The Simple Edge Discovery API retruns the request information, or an error message. |
| ***Post-conditions*** | Optional - the customer may decide to act upon the information by connecting the end-user application client to the application server instance hosted at the closest Edge Cloud Zone, and/or spin up an application server instance at that closest Edge Cloud Zone if not currently hosted there.  |
| ***Exceptions*** | 	Several exceptions might occur after a request to the Simple Edge Discovery  API <br /> - Unauthorized: Invalid credentials (e.g. use of already expired access token). <br /> - Invalid Input: Invalid input data to retrieve device details (e.g. MSISDN format not as expected, or MSISDN not associated with a customer of the CSP). <br />- Forbidden: End user has not consented to device identifier information being provided to the Customer:User <br /> - Service not applicable: the device is not currently attached to an Edge-capable network. <br /> - The network cannot resolve the request due to an internal issue. <br /> - a rate limit/request quota has been exceeded. | 

## API Workflows
### Simple Edge Discovery
#### Scenario 1: request from application developer server or application client on device

Constraints:
- Network: cellular (4G/5G) or fixed/Wi-Fi network with an Edge Cloud Zone deployment.
- Application: browser or app calls API over HTTPS
- Northbound Interface only (no 'UNI' client SDK required) 

Note:
- the Edge Cloud Zone platform may be hosted by the operator or a 3rd party hyperscaler (in which case the developer will need an account with that hyperscaler to create instances)

```mermaid
sequenceDiagram
    Note over API Consumer, Operator: PRE device attached <br/> to operator network
    Note over API Consumer, Operator: PRE App developer registered, <br/> authenticated and authorised
   alt device identified by 3-legged access token
    API Consumer->>Operator: POST /retrieve-closest-edge-cloud-zone
    Operator->>Operator: calculate closest Edge Cloud Zone for device
    Operator->>API Consumer: edgeCloudZoneID, edgeCloudZoneName, edgeCloudZoneProvider
   else device identifier(s) passed in request body
    API Consumer->>Operator: POST /retrieve-closest-edge-cloud-zone {request body: device}
    Operator->>Operator: calculate closest Edge Cloud Zone for device
    Operator->>API Consumer: edgeCloudZoneID, edgeCloudZoneName, edgeCloudZoneProvider, device
   end
   opt Application developer has a local mapping of server endpoints to Edge Cloud Zone names
    Application Developer->>Application Developer: lookup app server endpoint (EdgeCloudZone name)
    Application Developer->>Application Client: app server endpoint (IP address:port)
    Application Client->>Edge Cloud Zone Provider: connect to app server endpoint (IP address:port)
   end
   opt spin up instance on closest Edge Cloud Zone
    Application Developer->>Edge Cloud Zone Provider: create instance(Edge Cloud Zone)
    Edge Cloud Zone Provider->>Application Developer: instance endpoint
    Application Developer->>Application Client: instance endpoint
   end
```
