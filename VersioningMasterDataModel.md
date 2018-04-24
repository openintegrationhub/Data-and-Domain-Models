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


## 2 Discussion of the possible solutions
**Completely under construction**

### 2.1 Definition and Workflows

### 2.2 Technical Concept and Solution

**The core issue is: What must be done if the MDM changes?**
First easy step shall be: Sketch of what has to be done if a new optional attribute is added.

#### 2.2.1 Impacts on Connectors/Adapters
The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute. Potentially also the JSONata Expression must be extended.

#### 2.2.2 Impacts on REST APIs

##### 2.2.2.1 REST API OIH Model
The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute.

##### 2.2.2.2 REST API ISV Model
The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute.

#### 2.2.3 Impacts on Data Hub
The corresponding data table must be migrated, i.e. a new column is added to the data table and in old data records the new column gets a (defined) default value.

#### 2.2.4 Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
* Possible name conflicts: An attribute with the name of the Master Data Model's new attribute is already existing in the SDM/PDM.
* A semantically equivalent MDM-Attribute is already attribute of SDM/PDM, but the name of the SDM/PDM attribute differs from the name of the new attribute in the master data model.






