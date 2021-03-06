# Contribution Guideline

**Table of Content**
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Getting started](#getting-started)
- [Definition of Done](#definition-of-done)
- [Contributing a new data model](#contributing-a-new-data-model)
	- [Naming Conventions](#naming-conventions)
		- [Types and Properties](#types-and-properties)
		- [JSON-Schema](#json-schema)
	- [UML Class Diagrams](#uml-class-diagrams)
	- [Clarify all further aspects of a model with diagrams and/or textually](#clarify-all-further-aspects-of-a-model-with-diagrams-andor-textually)

<!-- /TOC -->

# Getting started
If you plan to make your first contribution, please start with the [**Contributor Guide**](https://github.com/openintegrationhub/BusinessCommittee/tree/master/Contributing/Guide) for general information about making contributions to the Open Integration Hub project.

The following represent additional rules specifically for contributions in this workgroup and repository.

# Definition of Done
An issue is marked as done, if all of the following criteria are fulfilled:

- All acceptance criteria have been fulfilled
- All Workgroup committer approved the content
- Content is Open Source under https://www.github.com/openintegrationhub/data-and-domain-models


# Contributing a new data model

The OIH is an open-source platform maintained by the cloud community under the leadership of the [Cloud Ecosystem](http://www.cloudecosystem.org). It can be run with any model which is designed and implemented by the rules and regulations listed so far.

In addition to the OIH platform itself, the OIH community also provides and maintains a number of concrete Master Data Models to be used by any OIH instance, such as models for contacts/addresses or products.

For these models, there are some further rules and regulations to follow in order to be presented in a unified way. This helps to understand and, above all, use them (i.e., implementing OIH Connectors for applications to be integrated with - respectively via - an OIH).

## Organisatory

* Create a new folder within the _MasterDataModel folder_ and name it equally to the domain the model is provided for
* The first page of the folder has to follow the structure of the [ReadmeTemplate](MasterDataModels/ReadmeTemplate.md) to guarantee a unified description of all master data models

## Naming Conventions

### Types and Properties

* __All type and property naming has to be in CamelCase:__
	* Type names are always spelled in _upper_ camel case (e.g., UpperCamelCaseType).
	* Property names are always spelled in _lower_ camel case (e.g., lowerCamelCaseProperty).
* __All type and property naming has to be done in English language.__
* __The prefixes _OIH_ and *OIH_*  (or _oih_ and *oih_* for properties) are reserved for types and properties of OIH related Types and fields and may not be used for definitions in concrete models.__

Some attributes are used across multiple models (such as "description"). To ensure consistency across all models, some of these attributes and how they should be named wihtin OIH Data Models are listed in the following:

|OIH Attribute Name|Other frequently used synonyms|Description|
|:--|:--|:--|
|deleted|deleted, removed|Flag to mark a dataset as deleted or removed|
|type|type, baseType, productType, setType, ...| Used to describe the specifc object. **Expection**: Two or more types attributes are needed for one object|
|notes|notes, note, additionalInformation, extraInformation, etc.|Used to provide additional information for the specific object (beyond description)|
|url| url, link|Used for all kind of links associated with the specific object|
|value|value, data|Used for the acutal content of a specific object E.g. in classical <key><value> pair. (Example: Contact Data (Type: Email, Value: ...@example.com"))|
|is...|All boolean attributes without `is`|Attributes of type boolean. Should be labeled starting with `is`. E.g. "isProduction", "isDirect", "isExact"|
|tags|flags, labels|Attribute which assigns different descriptive buzzwords to an object|


### JSON-Schema

* __Schema file names are always lowercase__.
* __As a seperator within file names a hyphen (-) may be used__ (e.g. _some-schema.json_).
* __The schema-ID (the _$id_ property in a JSON-Schema) is always structured as follows:__
	* The global context is _http://openintegrationhub.org/schemas/_
	* followed by a context directory and the name of the schema file (including the _.json_ suffix)

	Example: ```"$id": "http://openintegrationhub.org/schemas/products/product.json"```
* __Every field in a JSON-Schema must have a _description_ property__, as long as it's (even potentially) not self-explanatory.


## UML Class Diagrams

* __Every OMDM must be depicted by one or more UML Class Diagrams__, which illustrate the static aspect of the model. I.e., amongst others:
	* of which different OIH Data Records and entities (types) the OMDM constists,
	* how every OIH Data Record itself is composed,
	* how the OIH Data Records are related to each other,
	* which properties every entity (type) has.
* __Every OIH Data Record is defined by a Generalization relation__ (_OIHDataRecord_ is modelled as the superclass of the respective sub-model, s. [5. Example: the Order aggregate](#5-example-the-order-aggregate)).
* __Property types may, but must not be declared__ in the diagrams as the main purpose of these diagrams is to clarify the structure of an OMDM.

* Following the Domain-Driven-Design all _standalone_ objects (such as _person_ and _organization_ within the address model) should be coloured in yellow
* Other attributes should be coloured in blue (See: [Address model](/MasterDataModels/Addresses#uml-diagram))


## Clarify all further aspects of a model with diagrams and/or textually

Schemas and class diagrams only point out static aspects of a data model. Normally, there are further (e.g. dynamic) aspects of a model, that those descriptions do not point out (e.g. the conscious acceptance of redundancy). To enable ISVs and any other developers to understand and work with an OMDM,

* __all relevant aspects of a model, that are not derivable from JSON-Schemas or UML Class Diagrams have to be described textually and by further illustrations of any kind.__



