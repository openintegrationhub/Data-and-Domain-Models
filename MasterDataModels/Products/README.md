**Table of Contents**

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Introduction](#introduction)
- [Basic Ideas](#basic-ideas)
	- [Multiple Types](#multiple-types)
- [Operations](#operations)
- [Content](#content)
	- [UML Diagram](#uml-diagram)
	- [JSON Schema](#json-schema)
	- [Description Table](#description-table)
- [Additional Content](#additional-content)

<!-- /TOC -->

# Introduction

In the following the master data model for the domain products is explained in detail. As for every Open Integration Hub Master Data Model, an UML class diagram, a JSON schema as well as a descrption table exists.

# Basic Ideas
## Multiple Types
...

# Operations
CRUD functionalities can be performed based on the model.

# Content

## UML Diagram

![MasterDataModelAddressesV2](Assets/OIHDataModelProducts.svg)

## JSON Schema

- `Product` Schema: [product](../../src/main/schema/products/product.json)
  - Technical description of a product object

## Description Table

In addition to the uml class diagram, this folder contains a [description table](ProductModelDescriptionTable.md) which includes the following information for each attribute:
- Type
- Properties
- Short description
- Example values
- Enumeration options (if attribute is an enumeration)

# Additional Content

- No additional content
