**Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*

# Master Data Model Addresses

This document describes the evaluation of the master data model for address data
within in the Open Integration Hub.

## 1. What is a Master Data Model?

A master data model is a an abstract schema that organizes elements of data.
With this model the data can used and kept synchronized across applications.
With a master data management (MDM) - in the OIH-Project named
"Data Hub" - the master data is stored central.

A master data model should be designed with following criterias in focus:
- All use cases and user stories for the different scenarios of integration
between applications of different domains can be matched and the master data of
all the applications can be mapped to the database schema.
- The model is generic and it can be extended on the application level.


## 2. Approach

The following graphic describes our approach from gathering the necessary
informations for the analysis of the general requirements up to the description
of the final master data model. Purpose of this document is to fill the backlog
for the implementation of the first prototype of the Open Integration Hub.

![Approach Modeling](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/masterdatamodel-procedure.png)

## 3. Requirements for a Master Data Model

### 3.1 General Requirements

In this specific field of investigation, the master data model for addresses
describes a generic standard of customer data for the management of addresses.

Processing personal data is a special subject of privacy rules and data
protection laws.

The master data model for the OIH should be:
- compatible with business models in business-to-business and business-to-consumer.
- generic but extendable for individual applications
- used by the integration services and by the data hub
- cover most of the integration scenarios
- cover the privacy rules and data protection laws
- de facto standard for the address integration scenarios for SME

### 3.2 User Requirements

For the evaluation of the requirements we used topics, use cases and user
stories

- A topic describes the main issue, e.g. data integrity. We use the topics for
clustering the different use cases and user stories by a specific issue.

- The use case describes a specific business scenario, e.g. synching data
between two applications. It covers the long term description of the context we
would like to implement. Use Cases are permant artefacts, which will remain as
long as the product will be developed and supported.

For the use cases we use a Cockburn-style template where user goals,
subgoals or intentions are expressed in every step of the basic flow or
the extensions. This practice makes the requirement specification clearer, and
maximizes the flexibility of the design and the implementations.

- The user story describes a specific scenario from a user perspective, it is an
informal description of a feature. They define what has to be built in the
software project later on, so we can fill our backlog.

The common template of a user story should be:
As a <role>, I want <capability> so that <receive benefit>"

#### 3.2.1 Topic 'Types of Objects'

In the real world there are two different types of objects:
- organization like company, foundation, institutes, ...
- person as real human contacts

##### Use case properties of organization

User story: As a user I need informations about the location of the organization
to travel to the organization or to ship something (e.g. letters, goods, ...)
to the organization.

User story: As a user I need contact data of the organization to communicate
in different channels (email, phone, fax, url,  ...)

##### Use case properties of persons

User story: As a User I want to communicate with a person over different channels to have all possibilities to contact.

User story: As a User I want to manage employee data of my organization to handle Requirements of HR or with user management.

...

#### 3.2.2 Topic Relations

##### Use case relations person to organization

| User story: | As a user I want to assign one a more persons to an organisation to communicate with all contacts of an organisation |
| :--- | :--- |

User story: As a user I want to assign a person to different organisations with different contact data to see different roles of the same person.



| Label        | USE CASE - Person to Organization Relations |
| :---  | :---  |
**Actor:** | User
**Summary:** | Describes the relation between organizations and persons.
**Trigger:** | A user wants to assign persons to organizations.
**Preconditions:** | nd
**Main Success Scenario:** | Assignment took place
**Failure Scenario:** | Assignment not possible
**Basic Workflow:** | 1 Define person 2 Define organization 3 Assign person to organization relation
**Alternative Workflow:** |

##### Use case relations organization to others

User story: As a user I want to categorize organisations to segment and select target groups (relations of my own organisation to other)

***User stories of the own organization relations to others***

Transfer this from the old document

***Use cases organizations to organizations relations***

Transfer this from the old Document

***User stories organizations to organizations relations***

Transfer this from the old document

***Use cases person to person relations***

Transfer this from the old Document

***User stories person to person relations***

Transfer this from the old document

***Use cases person to organization relations***

Transfer this from the old Document

***User stories person to organization relations***

Transfer this from the old document

...

#### 3.2.3 Rights managment

#### 3.2.4 Data integrity

### 3.3 Legal requirements

#### 3.3.1 Data protection

#### 3.3.2 Data sovereignty


## 4. Findings

**Types and Relations**

There are two types of addresses:
- Organizations
- Persons




![Type of addresses](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/types-of-addresses.png)

=> Extend this with the data model from Snazzy Contacts

There a different types of organizations, e. g. companies, associations, groups,
and different types of persons, e.g. contact persons in companies,
private contacts.



![Typing of addresses](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/typing-of-addresses.png)







![Relationship person organisation](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/use-case-relationship-person-organisation.png)




**Common Fields**

A typical address contains the following fields:

Organizations
...

Persons
...











![Relations of organisations](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/relations-of-organisations.png)



![Relations of organisations](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/relations-among-persons.png)          



**Privacy**

To deal with privacy issues you have to consider...

**Rights Management**

To deal with rights management you have to consider...

## 4. Results

**UML diagram**

**Json schema**

**Documentation of the final Master Data Model of Addresses**
