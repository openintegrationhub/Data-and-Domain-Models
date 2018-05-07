# Versioning of Master Data Models

## 1 Goals

### 1.1 Definition of Workflows

We have to support the processing and the traceability of changes to a Master Data Model. So there should be well documented processes for:

* Creating a change request  
* Reviewing a request
* Approving/rejecting a request
* Planning/Implementing/Evaluating the necessary changes
* Releasing/deploying a new version

For these processes we should define:

* Who are the **contributing community members** (e.g. corporate members, associates,  individual members) and who are
 the **decision makers** (e.g. steering board, technical board, technical workgroup, administrator) of this process? 
* **Guidelines** for the decision processes
* **Channels/Software/Tools:** By which means do we e.g. create a change request? (Website form, JIRA, Github, ...)
* **Release cycles**: Shall we have periodic or nonperiodic release cycles? In the case of periodic release cycles: 
How often shall a new version be released? Shall extra-releases be allowed and under which conditions?
* **Tracking of changes**: How could a change log look like? 
* **Upgrade Propagation**: How and to whom shall changes be communicated?

### 1.2 Technical Concept and Solution

Changes of a Master Data Model may have impacts on other Open Integration Hub components. We have to clarify in detail, which kind of changes shall be allowed in consideration of the potential resulting technical restrictions. Furthermore we have to think about how we manage release and upgrade of a master data model’s version. So the following questions are arising:

* Which data model changes are possible in principle and **which changes are not allowed?** And what are the reasons for
 that?
* Which **technical restrictions** do we have to consider?
* Which **impacts on Data Hub** (data migration …) do Master Data Model changes have?
* Which **impacts on Connector versioning** do Master Data Model changes have?
* Which **impacts on REST-API**  versioning do Master Data Model changes have?
* Does the multi tenancy capability of an APP require different Master Data Model Versions (or different Special Data
 Model Versions)?
* Shall it be possible to run **APPs which use different versions** of a master data model?
* How shall a **version name pattern** look like? Which impacts on the pattern do the kind of allowed changes have?
* Which **Software Configuration Management** tool do we use? How is the process model of Master Data Model versioning 
and upgrading implemented there?
* Which correlations are between **Master Data Models, private Master Data Models and Specialized Master Data Models**? 
Do they possibly influence some of the decisions described above? Is there a 1:1 relation between Master Data Models 
and Specialized Data Models?
* Is it possible to derive **“Best Practices” for the definition of private Master Data Models**?


## 2 Discussion of the Technical Concept and Solution

This paper only focuses the discussion of the technical concept and solution concerning possible data model changes. 

As already pointed out in section 1.2, changing Master Data Models is a very complex issue and and the 
technical solution is subject to various constraints. In this section we want to carve out the possible difficulties and 
problems we are concerned with. We consciously do this without any recommendations, because we see the need for further discussion.

**The core issue is: What must be done if the MDM changes? We examine three cases: Adding, changing and deleting 
an attribute.**



**Note:** There are other documents in the repository with similiar content.
Some of them are:
1. [ProcedureModelExtension] (https://github.com/openintegrationhub/Data-and-Domain-Models/blob/modelExtenstionProcedure/MasterDataModels/ProcedureModelExtension.md)
2. [SpecializedDataModels] (https://github.com/openintegrationhub/Data-and-Domain-Models/blob/DataModelVersioning/SpecializedDataModels.md)
3. [SpecializedDataModelsExample] (https://github.com/openintegrationhub/Data-and-Domain-Models/blob/DataModelVersioning/SpecializedDataModelsExample.md)


### 2.1 What has to be done if a new attribute is added?

#### 2.1.1 Impacts on Connectors/Adapters
The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute. Potentially also the JSONata Expression must be extended.

#### 2.1.2 Impacts on REST API Models of OIH and ISV

The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute.

#### 2.1.3 Impacts on Data Hub
The corresponding data objects must be migrated, i.e. a new attribute has to be added to the data object's schema and
 in old data objects the new attribute must get a (defined) default value.

#### 2.1.4 Running APPs which use different versions of the MDM / Connector and REST API Versioning
If the new attribute is only optional in all REST APIs and in the JSON-schemata of the Connector, then there is 
no problem with running APPs which use different versions of the MDM: All APPs could use the newest versions of the 
REST APIs / Connectors, even if they do not "know" the new attribute.

If the new attribute shall be mandatory, then things are not that easy: APPs which use the old REST-APIs do not 
provide the new mandatory attribute. A solution for this problem would be that an APP must provide the 
version number of the MDM version it wants to use and that the corresponding versions of Connectors / REST APIs could 
be easily accessed (at runtime).

**--> Resulting questions: Shall it only be allowed to extend the MDM by optional attributes? Shall it be allowed that 
APPs use different versions of the MDM in parallel?**

#### 2.1.5 Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
* Possible name conflicts: An attribute with the name of the Master Data Model's new attribute is already existing in the SDM.
* A semantically equivalent MDM-Attribute is already attribute of SDM, but the name of the SDM attribute differs from the name of the new attribute in the master data model.

### 2.2 What has to be done if an attribute is changed?

**We distinguish two cases: Only the attribute name is changed or the attribute type is changed.**

#### 2.2.1 Impacts on Connectors/Adapters
The JSON-schemata for the input and output of the actions/triggers concerning the changed attribute of the master data 
model must be adapted. Potentially also the JSONata Expression must be adapted.

#### 2.2.2 Impacts on REST API Models of OIH and ISV

The JSON-schemata for the input and output of the actions/triggers concerning the changed attribute of the master 
data model must be adapted.

#### 2.2.3 Impacts on Data Hub
The corresponding data base objects must be migrated.

a) Only the name of the attribute changed: 
   The name of the attribute in the data base object's schema must be changed.
   
b)  The type of the attribute changed:
    The type of the attribute in the data base object's schema must be changed and the attribute values in old 
    data base objects must be converted to the new type. This is only possible if the conversion of the old data type to the new data type is compatible.
    
**--> Resulting questions: Shall it be allowed to change the data type of an attribute? And, if the answer is yes, 
shall the new data type be compatible with the old one, so that there is no type demotion?**

#### 2.2.4 Running APPs which use different versions of the MDM / Connector and REST API Versioning

APPs which use the old REST-APIs do not provide the new name or type of the attribute. A solution for this problem would be that an APP must provide the 
version number of the MDM version it wants to use and that the corresponding versions of Connectors / REST APIs could 
be easily accessed (at runtime).

**--> Resulting questions: Shall it be allowed to change an attribute of the MDM? And, once more: Shall it be allowed 
that APPs use different versions of the MDM in parallel?**

#### 2.2.5 Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
* Possible name conflicts: An attribute with the name of the Master Data Model's changed attribute name is already 
existing in the SDM.

### 2.3 What has to be done if an attribute is deleted?

#### 2.3.1 Impacts on Connectors/Adapters
The attribute must be removed from the JSON-schemata for the input and output of the actions/triggers of the concerning master data 
model. Potentially also the JSONata Expression must be adapted.

#### 2.3.2 Impacts on REST API Models of OIH and ISV

The attribute must be removed from the JSON-schemata for the input and output of the actions/triggers of the 
concerning master data model.

#### 2.3.3 Impacts on Data Hub
The corresponding data base objects must be migrated, i.e. the attribute must be deleted from the data base 
object's schema and in old data objects the value of the removed attribute has to be deleted.

#### 2.3.4 Running APPs which use different versions of the MDM / Connector and REST API Versioning

APPs which use old REST-APIs could provide the deleted attribute. Even if the old REST-APIs / Connector versions 
could be accessed, there remains still the problem that the corresponding data column does not exist any more (if no 
versionized data tables are used).

**--> Resulting question: Shall it be allowed to delete an attribute?**

#### 2.3.5 Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
There are no further impacts.


