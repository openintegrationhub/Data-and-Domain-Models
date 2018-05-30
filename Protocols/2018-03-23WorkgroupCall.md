# Protocol

**Attendees:** Lutz, Hansjörg, Philipp, Andreas, Jürgen, Frank, Elke, Dieter, Robin <br>
**Absent:** Josef

# Topics
## Current Status
1. Address model has been expanded by anylazing different solutions and standards
  - Exemplary solutions were:
    - Salesforce
    - Exact
    - Weclapp
    - SageOne
  - Standards that were analyzed:
    - vCard
    - BiPro
    - Infosphere (partly)
  - The elaborations include an expanded [UML class diagram](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/969645fe280641d62a9dcb085e2b7cf371d72279/MasterDataModels/Assets/OIHMasterDataModelAddresses_V2.png), a [tabular description](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/969645fe280641d62a9dcb085e2b7cf371d72279/MasterDataModels/AddressModelV2Description.md) and an initial Swagger documentation (not published yet)
2. Creation of an [initial procedure model](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/1f7e46664b8f2a3b39326d43a30816e6009a9dc8/MasterDataModels/ProcedureModelExtension.md) to extend the Master Data Models
  - This procedure model also includes a [form](https://goo.gl/forms/OjPFdyQ7qvDLMQ442) to request model changes
3. Wice (Shterion) is working on implementing a rudimentary database component which represents the master data model to enable data synchronization via the address master data model
4. First versions [SnazzyContactsAdapter](https://github.com/openintegrationhub/Data-and-Domain-Models/tree/master/MasterDataModels/SnazzyContactsAdapter) and [WiceCRMAdapter](https://github.com/openintegrationhub/Data-and-Domain-Models/tree/master/MasterDataModels/WiceAdapter) are finished (including API documentation for SnazzyContacts and WiceCRM) and ready for quality checks.
5. First version of [SilverERPAdapter](https://github.com/openintegrationhub/Data-and-Domain-Models/tree/master/MasterDataModels/SilverpContactsAdapter) exists.
6. [First ideas](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/776d87934893aeeca33181c9c95943533ac86a93/SpecializedDataModels.md),  [examples](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/776d87934893aeeca33181c9c95943533ac86a93/SpecializedDataModelsExample.md) and [conceptional elaborations](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/776d87934893aeeca33181c9c95943533ac86a93/VersioningMasterDataModel.md) were created to expand the procedure model

## Next Steps
- [ ] Reconciliation between **Lutz**, **Hansjörg** and **Philipp** regarding the address master data model (Monday, 23.03.2018 11:15)
- [ ] Conceptional elaborations for the procedur model **Elke** and **Lutz**
- [ ] Documentation of the proprietary (SilverERP) data model **Dieter** and **Josef**
- [ ] Work on implementing the database component on elastic.io **Shterion**
