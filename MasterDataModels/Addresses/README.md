**Table of Contents**


# Introduction

In the following the master data model for addresses is explained in detail. As for every Open Integration Hub Master Data Model, an UML class diagram, a JSON schema as well as a descrption table exists.

## Basis Ideas

_Beschreibung der zugrunde liegenden Logik´: Dubletten, Entkopplung der Relationen, Beschreibung der Relationen, etc._
### Duplicates

**User Story:** As a user I want to....

_Ggf. mit konkretem Beispiel_


# Content

## UML Diagram

![MasterDataModelAddressesV2](Assets/MasterDataModelAddressV2.svg)

## JSON Schema

- `Person` Schema: [personV2](../../src/main/schema/addresses/personV2.json)
  - Technical description of a person object
- `Organization` Schema: [organizationV2](../../src/main/schema/addresses/organizationV2.json)
  - Technical description of an organization object
- `Relation` Schema: [relationV2](../../src/main/schema/addresses/relationsV2.json)
  - Technical description of a relation object
- `Shared Definitions` Schema: [shared-definitionsV2](../../src/main/schema/addresses/sharedDefinitionsV2.json)
  - Technical description of shared definitions of persons and organizations

## Description Table

In addition to the uml class diagram, this folder contains a [description table](AddressModelV2Description.md) which includes the following information for each attribute:
- Type
- Properties
- Short description
- Example values
- Enumeration options (if attribute is an enumeration)
