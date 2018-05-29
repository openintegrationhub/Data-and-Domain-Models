# Versioning of Master Data Models

<!-- TOC depthFrom:2 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Goals](#goals)
	- [Definition of Workflows](#definition-of-workflows)
	- [Technical Concept and Solution](#technical-concept-and-solution)
- [Discussion of the Technical Concept and Solution](#discussion-of-the-technical-concept-and-solution)
	- [What has to be done if a new attribute is added?](#what-has-to-be-done-if-a-new-attribute-is-added)
		- [Impacts on Connectors](#impacts-on-connectors)
		- [Impacts on REST API Models of OIH and ISV](#impacts-on-rest-api-models-of-oih-and-isv)
		- [Impacts on Data Hub](#impacts-on-data-hub)
		- [Running APPs which use different versions of the MDM / Connector and REST API Versioning](#running-apps-which-use-different-versions-of-the-mdm--connector-and-rest-api-versioning)
		- [Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)](#impacts-on-specialized-data-models-sdm-and-private-data-models-pdm)
	- [What has to be done if an attribute is changed?](#what-has-to-be-done-if-an-attribute-is-changed)
		- [Impacts on Connectors](#impacts-on-connectors)
		- [Impacts on REST API Models of OIH and ISV](#impacts-on-rest-api-models-of-oih-and-isv)
		- [Impacts on Data Hub](#impacts-on-data-hub)
		- [Running APPs which use different versions of the MDM / Connector and REST API Versioning](#running-apps-which-use-different-versions-of-the-mdm-connector-and-rest-api-versioning)
		- [Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)](#impacts-on-specialized-data-models-sdm-and-private-data-models-pdm)
	- [What has to be done if an attribute is deleted?](#what-has-to-be-done-if-an-attribute-is-deleted)
		- [Impacts on Connectors](#impacts-on-connectors)
		- [Impacts on REST API Models of OIH and ISV](#impacts-on-rest-api-models-of-oih-and-isv)
		- [Impacts on Data Hub](#impacts-on-data-hub)
		- [Running APPs which use different versions of the MDM / Connector and REST API Versioning](#running-apps-which-use-different-versions-of-the-mdm-connector-and-rest-api-versioning)
		- [Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)](#impacts-on-specialized-data-models-sdm-and-private-data-models-pdm)
- [Workflows](#workflows)
	- [Decision Process Guidelines](#decision-process-guidelines)
	- [Tracking of Changes](#tracking-of-changes)
	- [Release Cycles](#release-cycles)
	- [Update propagation](#update-propagation)
		- [Channels](#channels)
			- [Website](#website)
			- [Newsletter](#newsletter)
			- [GitHub](#github)
			- [Technical](#technical)

<!-- /TOC -->

## Goals

### Definition of Workflows

We have to support the processing and the traceability of changes to a Master Data Model. So there should be well documented processes for:

* Creating a change request
  * One possibility to request a change is to use the [request for model change survey](https://docs.google.com/forms/d/e/1FAIpQLScTkJNCEPTIBlc7Cumn7Y-6pfIPV90E5tVox2djnJbLUSyi4g/viewform)
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

### Technical Concept and Solution

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


## Discussion of the Technical Concept and Solution

This paper only focuses the discussion of the technical concept and solution concerning possible data model changes.

As already pointed out in section 1.2, changing Master Data Models is a very complex issue and and the
technical solution is subject to various constraints. In this section we want to carve out the possible difficulties and
problems we are concerned with. We consciously do this without giving any recommendations, because we see the need for
further discussion.

**The core issue is: What must be done if the MDM changes? We examine three cases: Adding, changing and deleting
an attribute.**



**Note:** There are other documents in the repository with similiar content.
Some of them are:
1. [ProcedureModelExtension] (https://github.com/openintegrationhub/Data-and-Domain-Models/blob/modelExtenstionProcedure/MasterDataModels/ProcedureModelExtension.md)
2. [SpecializedDataModels] (https://github.com/openintegrationhub/Data-and-Domain-Models/blob/DataModelVersioning/SpecializedDataModels.md)
3. [SpecializedDataModelsExample] (https://github.com/openintegrationhub/Data-and-Domain-Models/blob/DataModelVersioning/SpecializedDataModelsExample.md)


### What has to be done if a new attribute is added?

#### Impacts on Connectors
The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute. Potentially also the JSONata Expression must be extended.

#### Impacts on REST API Models of OIH and ISV

The JSON-schemata for the input and output of the actions/triggers concerning the extended part of the master data model must be extended by the new attribute.

#### Impacts on Data Hub
The corresponding data objects must be migrated, i.e. a new attribute has to be added to the data object's schema and
 in old data objects the new attribute must get a (defined) default value.

#### Running APPs which use different versions of the MDM / Connector and REST API Versioning
If the new attribute is only optional in all REST APIs and in the JSON-schemata of the Connector, then there is
no problem with running APPs which use different versions of the MDM: All APPs could use the newest versions of the
REST APIs / Connectors, even if they do not "know" the new attribute.

If the new attribute shall be mandatory, then things are not that easy: APPs which use the old REST-APIs do not
provide the new mandatory attribute. A solution for this problem would be that an APP must provide the
version number of the MDM version it wants to use and that the corresponding versions of Connectors / REST APIs could
be easily accessed (at runtime).

**--> Resulting questions: Shall it only be allowed to extend the MDM by optional attributes? Shall it be allowed that
APPs use different versions of the MDM in parallel?**

#### Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
* Possible name conflicts: An attribute with the name of the Master Data Model's new attribute is already existing in the SDM.
* A semantically equivalent MDM-Attribute is already attribute of SDM, but the name of the SDM attribute differs from the name of the new attribute in the master data model.

### What has to be done if an attribute is changed?

**We distinguish two cases: Only the attribute name is changed or the attribute type is changed.**

#### Impacts on Connectors
The JSON-schemata for the input and output of the actions/triggers concerning the changed attribute of the master data
model must be adapted. Potentially also the JSONata Expression must be adapted.

#### Impacts on REST API Models of OIH and ISV

The JSON-schemata for the input and output of the actions/triggers concerning the changed attribute of the master
data model must be adapted.

#### Impacts on Data Hub
The corresponding data base objects must be migrated.

a) Only the name of the attribute changed:
   The name of the attribute in the data base object's schema must be changed.

b)  The type of the attribute changed:
    The type of the attribute in the data base object's schema must be changed and the attribute values in old
    data base objects must be converted to the new type. This is only possible if the conversion of the old data type to the new data type is compatible.

**--> Resulting questions: Shall it be allowed to change the data type of an attribute? And, if the answer is yes,
shall the new data type be compatible with the old one, so that there is no type demotion?**

#### Running APPs which use different versions of the MDM / Connector and REST API Versioning

APPs which use the old REST-APIs do not provide the new name or type of the attribute. A solution for this problem would be that an APP must provide the
version number of the MDM version it wants to use and that the corresponding versions of Connectors / REST APIs could
be easily accessed (at runtime).

**--> Resulting questions: Shall it be allowed to change an attribute of the MDM? And, once more: Shall it be allowed
that APPs use different versions of the MDM in parallel?**

#### Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
* Possible name conflicts: An attribute with the name of the Master Data Model's changed attribute name is already
existing in the SDM.

### What has to be done if an attribute is deleted?

#### Impacts on Connectors
The attribute must be removed from the JSON-schemata for the input and output of the actions/triggers of the concerning master data
model. Potentially also the JSONata Expression must be adapted.

#### Impacts on REST API Models of OIH and ISV

The attribute must be removed from the JSON-schemata for the input and output of the actions/triggers of the
concerning master data model.

#### Impacts on Data Hub
The corresponding data base objects must be migrated, i.e. the attribute must be deleted from the data base
object's schema and in old data objects the value of the removed attribute has to be deleted.

#### Running APPs which use different versions of the MDM / Connector and REST API Versioning

APPs which use old REST-APIs could provide the deleted attribute. Even if the old REST-APIs / Connector versions
could be accessed, there remains still the problem that the corresponding data column does not exist any more (if no
versionized data tables are used).

**--> Resulting question: Shall it be allowed to delete an attribute?**

#### Impacts on Specialized Data Models (SDM) and Private Data Models (PDM)
There are no further impacts.

## Workflows

### Decision Process Guidelines

epending on the change a certain threshold has to be passed in order to change a model.

The following table defines some thresholds for the different changes. All thresholds are suggestions. For some cases it might makes sense to make the decision based on other criteria:

| Change | Threshold |
|---|---|
|Adding a nullable attrribute|Suggested at least 3 times|
|Adding an object to the model|Suggested at least 3 times|
|Adding an option to an enumaration|Suggested at least 3 suggestions|
|Renaming an existing attribute|> 66 % of all connected applications|
|Renaming an existing enumeration option|> 66 % of all connected applications|
|Changing the type of an existing attribute|> 66 % of all connected applications|
|Changing an attributes' property from _nullable_ to _not nullable_|> 66 % of all connected applications|
|Deleting an existing attribute|100% of all connected applications|
|Renaming an existing object|> 66 % of all connected applications|
|Deleting an existing object|100% of all connected applications|
|Adding an attribute that is not nullable|> 50 % of all connected applications|

The idea behind a threshold of _"suggested at least 3 times"_ is that for 2 suggestions a peer-to-peer integration can be realized and there is no need to include it into the Open Integration Hub.

### Tracking of Changes

changelog should exist for each version number, to track all changes of a model. This changelog needs to include information about the _action_ (what was done), the _affected object_, the _new value_, the _date-time_ of the change and the _model version_. Thus, a changelog could look like the one presented in the following:

|Model Version|Action|Category|Affected Object|Affected Attriute|Old Value|New Value|updated at|
|---|---|---|---|---|---|---|---|
|OIHMasterDataModelAddresses_v1.1.0|Optional attribute added|minor|Person|jobTitle|-|jobTitle|2018-01-01|
|OIHMasterDataModelAddresses_v1.1.0|Optional attribute added|minor|OrganizationCategory|abcType|-|abcType|2018-01-01|
|OIHMasterDataModelAddresses_v1.2.0|Optional attribute added|minor|Organization|logo|-|logo|2018-07-01|
|OIHMasterDataModelAddresses_v2.0.0|Object added|minor|Social|-|-|Social Object|2019-01-01|
|OIHMasterDataModelAddresses_v2.0.0|Optional attribute added|minor|Phone|messenger|-|messenger|2019-01-01|
|OIHMasterDataModelAddresses_v2.0.0|Attribute type change|major|Address|unit|integer|string|2019-01-01|
|...|...|...|...|...|...|...|...|

### Release Cycles
A release cycle defines in which intervals new model versions are released. Pros and cons exist for various durations of a release cycle.

_Advantages of short release cycles (e.g. weekly/monthly):_
- Changes are quickly incorporated into the model
- Low rework per release because of the small(er) amount of changes

_Disadvantages of short release cycles:_
- Rework is needed often
- Connected transformer are quickly outdated
- The high frequency of the changes requires a high amount effort

_Advantages of long release cycles(e.g. once/twice a year):_
- Rework is only needed once or twice a year because of bulk changes
- Connected transformer are a least up-to-date for half a year
- Due to bulk changes, the amount of effort is kept relatively low

_Disadvantages of long release cycles:_
- It can take a long time until changes are incoprated into the model (e.g. when a change is proposed shortly after the last release cycle)
- The bulk changes CAN (not necessarily - depending on the amount of changes incorpoated into the model) require a lot of rework

Conclusion:
All connected transformer (and their operators) need to be informed about new model versions. The high frequency of changes in short release cycles will cause a lot of rework, as every release needs to be communicated.
Therefore **relatively long release cycles** are suggested. To avoid a degenerating timespan between proposal and model change, it is suggested to set the release cycles to **6 month** (twice a year).


### Update propagation

#### Channels

##### Website
- Under sections "news" the release can be announced
- Could include a note which mentiones the newest model version

##### Newsletter
- For every release a newsletter can be send out to communicate the new model version & the accompanying changes

##### GitHub
- Extra section in the README.md with the current model version a reference to its documentation

##### Technical
- If the transformer interacts with the OIH, OIH can automatically track the version number the transformer is referring to
- OIH sends out a notification that the mapping is done against an outdated model, incl. a reference to the newest model version
