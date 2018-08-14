# Protocol

**Attendees:** Philipp, Elke, Andreas, Franz

## Protocol

# Versioning
- A graphical overview of the decision process workflow could help to get a quick overview of the process
- Thresholds for incorporating changes into a data model
  - Decisions should be made by Committer not by connected applications. Otherwise there would be a communication overhead and the process would take to long. 
- Decision process guidelines have to be more precise

# OihMessage
- OihMessage needs the oihMessage attribute changed into oihMessageHeader
- Modification object should be more generic
  - Split into userId, Type (Creation, Modification) and Timestamp

# Conventions
- Common attribute table must be revised to check whether it is appropriate or not

## Next Steps
- [ ] Create graphical overview of [decision process workflow](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/cda-protocol-1/MasterDataModels/Versioning/VersioningMasterDataModel.md#workflows) **andreas** 
- [ ] Change [threshold table](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/cda-protocol-1/MasterDataModels/Versioning/VersioningMasterDataModel.md#decision-process-guidelines) of decision process **philipp**
- [ ] Define decision process more precisely **philipp**
- [ ] Revise [OIHMessage and Modification object](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/d866cc99c172285f3f73bef810e24782f1758d24/MasterDataModels/Assets/OihMessageWithModifcation.png) **philipp**
- [ ] Review [Release Cylce part](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/cda-protocol-1/MasterDataModels/Versioning/VersioningMasterDataModel.md#release-cycles) **Franz, Elke & Andreas**
- [ ] Review changes and additions from all 5 tasks above **all**
