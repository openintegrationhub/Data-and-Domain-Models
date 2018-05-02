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

* Who are the **contributing community members**(e.g. corporate members, associates,  individual members) and who are
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

This paper only focuses the discussion of the technical concept and solution.

**The core issue is: What must be done if the MDM changes? We examine three cases: Adding, changing and deleting 
an attribute**

### 2.1 What has to be done if a new attribute is added?

#### 2.1.1 Impacts on Connectors/Adapters
The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute. Potentially also the JSONata Expression must be extended.

#### 2.1.2 Impacts on REST API Models of OIH and ISV

The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute.

#### 2.1.3 Impacts on Data Hub
The corresponding data table must be migrated, i.e. a new column has to be added to the data table and in old data 
records the new column must get a (defined) default value.

#### 2.1.4 Running APPs which use different versions of the MDM / Connector and REST API Versioning
If the new attribute is only optional in all REST APIs and in the JSON-schemata of the Connector, then there is 
no problem with running APPs which use different versions of the MDM: All APPs could use the newest versions of the 
REST APIs / Connectors, even if they do not "know" the new attribute.

If the new attribute shall be mandatory, then things are not that easy: APPs which use the old REST-APIs do not 
provide the new mandatory attribute. A solution for this problem would be that an APP must provide the 
version number of the MDM version it wants to use and that the corresponding versions of Connectors / REST APIs could 
be easily accessed (at runtime).

**--> Recommendation: It shall be only allowed to extend the MDM by optional attributes.**

#### 2.1.5 Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
* Possible name conflicts: An attribute with the name of the Master Data Model's new attribute is already existing in the SDM/PDM.
* A semantically equivalent MDM-Attribute is already attribute of SDM/PDM, but the name of the SDM/PDM attribute differs from the name of the new attribute in the master data model.

### 2.1 What has to be done if an attribute is changed?

**We distinguish two cases: Only the attribute name is changed or the attribute type is changed.**

#### 2.1.1 Impacts on Connectors/Adapters
The JSON-schemata for the input and output of the actions/triggers concerning the changed attribute of the master data 
model must be adapted. Potentially also the JSONata Expression must be adapted.

#### 2.1.2 Impacts on REST API Models of OIH and ISV

The JSON-schemata for the input and output of the actions/triggers concerning the changed attribute of the master 
data model must be adapted.

#### 2.1.3 Impacts on Data Hub
The corresponding data table must be migrated.

a) Only the name of the attribute changed: 
   The name of the data table column must be changed.
   
b)  The type of the attribute changed:  
    The type of the data table column must be changed and the column values in old data records must be converted to 
    the new type. This is only possible if the conversion of the old data type to the new data type is compatible.
    
**--> Recommendation: It shall be at the very most allowed to change the data type of an attribute if the new data type
 is compatible with the old one, i.e. that there is no type demotion!**

#### 2.1.4 Running APPs which use different versions of the MDM / Connector and REST API Versioning

APPs which use the old REST-APIs do not provide the new name or type of the attribute. A solution for this problem would be that an APP must provide the 
version number of the MDM version it wants to use and that the corresponding versions of Connectors / REST APIs could 
be easily accessed (at runtime).

**--> Recommendation: It shall be not at all allowed to change an attribute of the MDM.**

#### 2.1.5 Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
* Possible name conflicts: An attribute with the name of the Master Data Model's changed attribute name is already 
existing in the SDM/PDM.

### 2.1 What has to be done if an attribute is deleted?

#### 2.1.1 Impacts on Connectors/Adapters
The attribute must be removed from the JSON-schemata for the input and output of the actions/triggers of the concerning master data 
model. Potentially also the JSONata Expression must be adapted.

#### 2.1.2 Impacts on REST API Models of OIH and ISV

The attribute must be removed from the JSON-schemata for the input and output of the actions/triggers of the 
concerning master data model.

#### 2.1.3 Impacts on Data Hub
The corresponding data table must be migrated, i.e. the column must be deleted from to the data table's schema and in 
old data records the value of the removed column has to be deleted.

#### 2.1.4 Running APPs which use different versions of the MDM / Connector and REST API Versioning

APPs which use old REST-APIs could provide the deleted attribute. Even if the old REST-APIs / Connector versions 
could be accessed, there remains still the problem that the corresponding data column does not exist any more (if no 
versionized data tables are used).

**--> Recommendation: It shall not be allowed to delete an attribute!**

#### 2.1.5 Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
There are no further impacts.


