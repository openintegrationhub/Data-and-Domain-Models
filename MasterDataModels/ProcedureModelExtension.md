This file is designed to act as a guide to handle incoming requests for model changes.

**Table of Contents:**

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [How to create a request](#how-to-create-a-request)
	- [Mockup for requests](#mockup-for-requests)
- [Decision Support for Model changes](#decision-support-for-model-changes)
	- [Change Types](#change-types)
	- [Thumb of rules](#thumb-of-rules)
	- [Decision Template](#decision-template)
- [Model versioning](#model-versioning)
	- [Advantages of Versioning](#advantages-of-versioning)
	- [Naming Convetion for Versioning](#naming-convetion-for-versioning)
	- [Changelog](#changelog)
- [Steering Board Member](#steering-board-member)
- [Update propagation](#update-propagation)

<!-- /TOC -->

# How to create a request
Whenever the demand for a model changes occurs, there is a common proccess to communicate and request these changes.

In order to propose a change the following steps need to be performed:
1. Fill out the [request for model change survey](https://goo.gl/forms/OjPFdyQ7qvDLMQ442)
2. Submit the proposal
3. The steering board will check the proposal accoring to fix rules
4. If the proposal is approved the change will be incorporated into the model
5. A new model version is released
6. The model model verison is communicated to all affected applications

# Decision Support for Model changes
If a proposal for a model change is made several aspects need to be considered before a change is approved.
The following sections should act as a guide to decide wether a change should be incorpoated or not.

## Change Types
A data model can be changed in several ways. Some changes automatically enable backward compatibility (_minor_). Others do not support backward compatibility(_major_) and some changes can be classified as _patches_.

The naming conventions follows the [SemVer standard](https://semver.org/) (more details in the section [Naming Convetion for Versioning](#naming-convetion-for-versioning))

All changes that do not automatically enable backward compatibility come along with the need to change all connected transformers and thus, be accompanied by a huge amount of rework.
Therefore, changes of this kind are in general **not allowed** (For some major changes the sepcial case/reason needs to be considered).

The following table sums up different model changes, categorizes them and states if the change is allowed or not:

| Change | Category |
|---|---|
|Adding a nullable attrribute|Minor|Yes|
|Adding an object to the model|Minor|Yes|
|Adding an option to an enumaration|Minor|Yes|
|Renaming an existing attribute|Major|Case dependent|
|Renaming an existing enumeration option|Major|Case dependent|
|Changing the type of an existing attribute|Major|Case dependent|
|Changing an attributes' property from _nullable_ to _not nullable_|Major|No|
|Deleting an existing attribute|Major|No|
|Renaming an existing object|Major|No|
|Deleting an existing object|Major|No|
|Adding an attribute that is not nullable|Major|No|

## Thumb of Rules
### Number of Requests

Depending on the change a certain threshold has to be passed in order to change a model.

The following table defines some thresholds for the different changes (Thresholds are not fix yet):

| Change | Threshold |Allowed|
|---|---|---|
|Adding a nullable attrribute|Suggested at least 3 times|
|Adding an object to the model|Suggested at least 3 times|
|Adding an option to an enumaration|3 suggestions|
|Renaming an existing attribute|> 66 % of all connected applications|
|Renaming an existing enumeration option|> 66 % of all connected applications|
|Changing the type of an existing attribute|> 66 % of all connected applications|
|Changing an attributes' property from _nullable_ to _not nullable_|> 66 % of all connected applications|
|Deleting an existing attribute|100% of all connected applications|
|Renaming an existing object|> 66 % of all connected applications|
|Deleting an existing object|100% of all connected applications|
|Adding an attribute that is not nullable|> 50 % of all connected applications|

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
Therefore **long release cycles** are chosen. To avoid a degenerating timespan between proposal and model change, the release cycles are set to **6 month** (twice a year).

## Decision Template

# Model versioning
Model versioning is the process of assigning unique identifier to different stages of a data model. Due to model changes and the resulting stages a model versioning is inevitable.

## Advantages of Versioning

- Previous changes to a data model are made comprehensible
- The current version of a data model can be compared with other versions of the data model
- It enables to reset the model to a current status
- It enables referencing
  - A varying number of applications map against the master data model. With versioning it is possible to reference against which model version the mapping was done (reference e.g. within the transformer description).

## Naming Convetion for Versioning
The name of a specific model version consists of two parts:
1. The `base name` of the data model
2. A sepcific version consting of the letter `v` and a `version number`.

The structure of the `version number` follows the standards of [SemVer - Semantic Versioning](https://semver.org/). According to SemVer a version number conists of three parts **X**, **Y** & **Z**.

The **X** stand for the _major_ version while **Y** is the _minor_ version and **Z** the _patch_ version.

According to SemVer, _major_, _minor_ and _patch_ are defined as follows:
```
Given a version number MAJOR.MINOR.PATCH, increment the:
MAJOR version when you make incompatible API changes,
MINOR version when you add functionality in a backwards-compatible manner, and
PATCH version when you make backwards-compatible bug fixes.
```

This means, every model name has the following structure:
```
<ModelName>_vX.Y.Z
```

An example for a concrete model name could look like the following:

```
OIHMasterDataModelAddresses_v1.0.0
```

Dependening on the type of model change the version number should increment in different ways. On the one hand only the number after the decimal point should increase if a minor change is made. On the other hand should the number before the decimal point be increased if a major change is made.

**Exemplary model name evolution:**

Minor change:
```
OIHMasterDataModelAddresses_v1.0.0 -> Two new nullable attributes added -> OIHMasterDataModelAddresses_v1.1.0
```
Minor change:
```
OIHMasterDataModelAddresses_v1.1.0 -> New option added to an enumaration -> OIHMasterDataModelAddresses_v1.2.0
```
Major change:
```
OIHMasterDataModelAddresses_v1.2.0 -> Type of existing attribute changed -> OIHMasterDataModelAddresses_v2.0.0
```

**Bulk changes:**

The specified time for release cycle are 6 month. Thus, it is likely that multiple changes are incorporated into a model with each release cycle.
As long as all changes are of the same type, the version number increments as aforementioned.

When different types of changes are associated with one release, the version number orients itself by the strength of the changes.

**Examples:**

|Old Version Number|No. of major changes|No. of minor changes|No. of patches|New Version Number|
|---|---|---|---|---|
|1.0.0|1|8|2|2.0.0|
|1.0.0|0|3|1|1.1.0|
|1.0.0|1|0|2|2.0.0|


## Changelog
A changelog should exist for each version number, to track all changes of a model. This changelog needs to include information about the _action_ (what was done), the _affected object_, the _new value_, the _date-time_ of the change and the _model version_. Thus, a changelog could look like the one presented in the following:

|Model Version|Action|Category|Affected Object|Affected Attriute|Old Value|New Value|updated at|
|---|---|---|---|---|---|---|---|
|OIHMasterDataModelAddresses_v1.1.0|Nullable attribute added|minor|Person|jobTitle|-|jobTitle|2018-01-01|
|OIHMasterDataModelAddresses_v1.1.0|Nullable attribute added|minor|OrganizationCategory|abcType|-|abcType|2018-01-01|
|OIHMasterDataModelAddresses_v1.2.0|Nullable attribute added|minor|Organization|logo|-|logo|2018-07-01|
|OIHMasterDataModelAddresses_v2.0.0|Object added|minor|Social|-|-|Social Object|2019-01-01|
|OIHMasterDataModelAddresses_v2.0.0|Nullable attribute added|minor|Phone|messenger|-|messenger|2019-01-01|
|OIHMasterDataModelAddresses_v2.0.0|Attribute type change|major|Address|unit|integer|string|2019-01-01|
|...|...|...|...|...|...|...|...|


# Decision Maker

# Update propagation

## Channels

### Website
- Under sections "news" the release can be announced
- Could include a note which mentiones the newest model version

### Newsletter
- For every release a newsletter can be send out to communicate the new model version & the accompanying changes

### GitHub
- Extra section in the README.md with the current model version a reference to its documentation

### Technical
- If the transformer interacts with the OIH, OIH can automatically track the version number the transformer is referring to
- OIH sends out a notification that the mapping is done against an outdated model, incl. a reference to the newest model version
