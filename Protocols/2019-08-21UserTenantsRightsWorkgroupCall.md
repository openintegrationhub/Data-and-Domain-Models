# Protocol

**Attendees:** Philipp, Hansjörg, Hans

# Housekeeping
-	Please add more use cases [-> google doc](https://docs.google.com/document/d/1B_4wSOBe-_Xbws6fjlk9s0xV1F6zA5BmXvNmRCulr_s/edit?usp=sharing)

# Topics
**Tenant/User (T/U) in general**
1. investigated references and concepts already discussed or developed within OIH, found a few references
* [MetaModel](../MasterDataModels/MetaModel.md)
* [OihMessage](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/oihHeader/MasterDataModels/Assets/OihMessage.svg)
2. IAM service organizes users as members of distinct tenants
* [OIH IAM Service](https://github.com/openintegrationhub/openintegrationhub/tree/master/services/iam)

First conclusions
- T/U Rarely referenced nor specified in a generic way
- IAM implements simple T/U to authorize account management
- -> design T/U Data Model to equalize existing concepts

**Rights & Permissions**

Discussed following scenarios

1.
-	Service A has access management
-	Service B spares access control, all data is public
-	Sensitive data will be transferred from A to B and is henceforth public
2.
-	Organization provides a pipeline to transfer data from Service A to Service B
-	Members with access to flow will transfer data without holding individual rights

Consequential issues
- Do we have to find intersections between different access rights and derive suitable permissions? Optional or mandatory?
- Could we store tokens for different users, flows, tenants - delegate access management to every service involved?



## Next Steps
-	Further discussion on topics
