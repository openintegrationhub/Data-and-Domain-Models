# Master Data Models - Rules and Regulations

This document describes the rules and regulations to implement
master data models for the open integration hub.

## 1. What is a Master Data Model?

A master data model is a an abstract schema that organizes elements of data.
With this model the data can used and kept synchronized across applications.
With a master data management (MDM) - in the OIH-Project named
"Data Hub" - the master data is stored central.

For the Open Integration Hub we don't use a canonical data model. Instead we use a model for each context.
In individual contexts objects are different to handle, we have to accept this.
A canonical data model brings massive communication effort, idle times and workarounds.

## 2. Motivation

A master data model should be designed with following criterias in focus:
- All use cases and user stories for the different scenarios of integration
between applications of different domains can be matched and the master data of
all the applications can be mapped to the database schema.
- The model is generic and it can be extended on the application level.

## 3. Requirements

A master data model for the OIH should be:
- compatible with business models in business-to-business and business-to-consumer.
- generic but extendable for individual applications
- used by the integration services and by the data hub
- cover most of the integration scenarios
- cover the privacy rules and data protection laws
- de facto standard for the address integration scenarios for SME

## 4. Rules for Implementing a Master Data Model for the Open Integration hub

To implement a new Master Data Model for a specific context for the Open Integration Hub you
have to deliver some basics first.

At least a JSON-Schema for the Master Data Model is mandatory. For a better overview
and easier understanding a UML-Diagram would desirable.

Variable naming has to be in CamelCase with english names.

First of all each of the OIH-Sub-models has to be marked as an OID Data Record.
The root of a Master Data Model's sub-model must inherit from / extend the
OIHDataRecord, no matter whether it is modeled as an aggregate or as a single entity.
See the reference of the OIH Master Data Model for further informations.

Please deliver a description of the context of the new OIH-Sub-model you wish to implement,
so other user can get a quick overview of your context.
