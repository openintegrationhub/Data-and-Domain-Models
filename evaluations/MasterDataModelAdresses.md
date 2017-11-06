# Master Data Model Addresses


## Table of content

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Master Data Model Addresses](#master-data-model-addresses)
	- [Table of content](#table-of-content)
	- [1. What is a Master Data Model?](#1-what-is-a-master-data-model)
	- [2. Approach](#2-approach)
	- [3. Requirements for a Master Data Model](#3-requirements-for-a-master-data-model)
		- [3.1 General Requirements](#31-general-requirements)
		- [3.2 User Requirements](#32-user-requirements)
			- [3.2.1 Topic 'Types of Objects'](#321-topic-types-of-objects)
				- [Use case properties of organization](#use-case-properties-of-organization)
				- [Use case properties of persons](#use-case-properties-of-persons)
			- [3.2.2 'Topic Relations'](#322-topic-relations)
				- [Use case relations person to organization](#use-case-relations-person-to-organization)
				- [Use case relations organization to others](#use-case-relations-organization-to-others)
			- [3.2.3 Topic 'Rights managment'](#323-topic-rights-managment)
			- [3.2.4 Topic 'Data integrity'](#324-topic-data-integrity)
		- [3.3 Legal requirements](#33-legal-requirements)
			- [3.3.1 Topic 'Data protection'](#331-topic-data-protection)
			- [3.3.2 Topic 'Data sovereignty'](#332-topic-data-sovereignty)
	- [4. Findings](#4-findings)
	- [4. Results](#4-results)

<!-- /TOC -->


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

Processing personal data, such as personally identifiable information, is a special subject of privacy rules and data protection laws.

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
would like to implement. Use Cases are permanent artefacts, which will remain as
long as the product will be developed and supported.
For the use cases we use a Cockburn-style template where user goals,
subgoals or intentions are expressed in every step of the basic flow or
the extensions. This practice makes the requirement specification clearer, and
maximizes the flexibility of the design and the implementations.

- The user story describes a specific scenario from a user perspective, it is an
informal description of a feature. They define what has to be built in the
software project later on, so we can fill our backlog.

The common template of a user story should be:
"As a *role*, I want *capability* so that *receive benefit*"

#### 3.2.1 Topic 'Types of Objects'

If we talk here about addresses, we mean contact data such as names, addresses and telephone numbers. An address is a collection of information, presented in a mostly fixed format, used to give a location or a contact point, generally using political boundaries and street names as references, along with other identifiers such as house or apartment numbers. Some addresses also contain special codes, such as a postal code, to make identification easier and aid in the routing of mail.

In the real world there are two different types of objects with different scope of contact data:
- organization like company, foundation, institutes, ...
- person as real human contacts

Both have fields in common and have different fields. The users want to deal with this objects in different ways.

##### User stories properties of organizations

| User story: | As a user I need informations about the location of the organization to travel or to ship something to the organization (e.g. letters, goods, etc.) to it. |
| :--- | :--- |

| User story: | As a user I need contact data of the organization to communicate in different channels (email, phone, fax, url,  ...) |
| :--- | :--- |

##### Use case properties of organization

| Label        | USE CASE - properties of organizations |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes adding specific contact data to any kind of organization |
| **Trigger:** | A user wants to store contact data for an organization |
| **Preconditions:** | The organization is already stored |
| **Main Success Scenario:** | Added contact data |
| **Failure Scenario:** | Adding contact data was not successful |
| **Basic Workflow:** | 1. Chose the organization<br/> 2. Add specific contact data, e.g. postal address, in the appropriate fields<br/> 3. Store the data  |
| **Alternative Workflow:** | 2a. Required fields are not available or in different format<br/> 3a. Add new field<br/> 3b. Use different field similar to the appropriate field.<br/> 4. Store the data.   |

##### User stories properties of persons

| User story: | As a User I want to communicate with a person over different channels to have all possibilities to contact. |
| :--- | :--- |

| User story: | As a User I want to communicate with a person over different channels to have all possibilities to contact. |
| :--- | :--- |

| User story: | As a User I want to manage employee data of my organization to handle Requirements of HR or with user management. |
| :--- | :--- |


##### Use case properties of persons

| Label        | USE CASE - properties of persons |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes adding specific contact data to any kind of persons |
| **Trigger:** | A user wants to store contact data for a person |
| **Preconditions:** | The person is already stored |
| **Main Success Scenario:** | Added contact data |
| **Failure Scenario:** | Adding contact data was not successful |
| **Basic Workflow:** | 1. Chose the person<br/> 2. Add specific contact data, e.g. postal address, in the appropriate fields<br/> 3. Store the data  |
| **Alternative Workflow:** | 2a. Required fields are not available or in different format<br/> 3a. Add new field<br/> 3b. Use different field similar to the appropriate field.<br/> 4. Store the data.   |

#### 3.2.2 'Topic Relations'

##### User stories relations person to organization

| User story: | As a user I want to assign one or more persons to an organization to communicate with all contacts of an organization |
| :--- | :--- |

| User story: | As a user I want to assign a person to different organizations with different contact data to see different roles of the same person. |
| :--- | :--- |

| User story: | As a user I want to register my own employee data to use this data for the administration of my employees. |
| :--- | :--- |

##### Use case relations person to organization

| Label        | USE CASE - Person to Organization Relations |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes the relation between organizations and persons. |
| **Trigger:** | A user wants to assign persons to organizations. |
| **Preconditions:** | nd |
| **Main Success Scenario:** | Assignment took place |
| **Failure Scenario:** | Assignment not possible |
| **Basic Workflow:** | 1 Define person<br/> 2 Define organization<br/> 3 Assign person to organization relation |
| **Alternative Workflow:** |    |

##### User stories relations of organizations to other organizations

| User story: | As a user I want to categorize organizations to segment and select target groups (relations of my own organization to other), for that i am able to do marketing campaigns. |
| :--- | :--- |

| User story: | As a user I want to know, who delivers goods to my customers to get an overview of all their supplier. |
| :--- | :--- |

| User story: | As a user I want to see the structure of a group of companies, to get a better overview of my business dealings.  |
| :--- | :--- |

| User story: | As a user I want to lay down any kind of delivery addresses for my customers, to be able to deliver my goods to any location.  |
| :--- | :--- |

| User story: | As a user I want to lay down any kind of branch of my customers, to be able to see the structure of a group of companies.  |
| :--- | :--- |

##### Use case relations of organization to other organizations

| Label        | USE CASE - Organization to Organization Relations |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes the relation between organizations and other organizations. |
| **Trigger:** | A user wants to assign a branch to an organization. |
| **Preconditions:** | nd |
| **Main Success Scenario:** | Assignment took place |
| **Failure Scenario:** | Assignment not possible |
| **Basic Workflow:** | 1 Define first organization <br/> 2 Define second organization<br/> 3 Assign organization to organization relation |
| **Alternative Workflow:** |    |


# ???? double ???

##### User stories organizations to organizations relations


##### Use cases organizations to organizations relations

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

##### User stories of the own organization relations to others

| User story: | As a user I want to categorize the organisations as customer, lead, partner, supplier, ... to segment my target groups.|
| :--- | :--- |

| User story: | As a user I want to categorizemy my customers, lead, supplier for e.g. in 'A - very important', 'B - imprtant' oder 'C - less important' to classify my target groups.|
| :--- | :--- |

##### Use case of the own organization relations to others

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

##### User stories person to person relations

| User story: |  |
| :--- | :--- |

##### Use cases person to person relations

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

##### User stories person to organization relations

| User story: |  |
| :--- | :--- |


##### Use cases person to organization relations

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

#### 3.2.3 Topic 'Rights managment'

##### User stories Rights management

| User story: |  |
| :--- | :--- |

#####

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

#### 3.2.4 Topic 'Data integrity'

| User story: |  |
| :--- | :--- |

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

#### 3.2.5 Topic 'Data quality'

| User story: |  |
| :--- | :--- |

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

### 3.3 Legal requirements

#### 3.3.1 Topic 'Data protection'

| User story: |  |
| :--- | :--- |

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

#### 3.3.2 Topic 'Data sovereignty'

| User story: |  |
| :--- | :--- |

| Label        |  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** |  |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

### 3.4 Standardization

| User story: |  |
| :--- | :--- |



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







![Relationship person organization](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/use-case-relationship-person-organization.png)




**Common Fields**

A typical address contains the following fields:

Organizations
...

Persons
...











![Relations of organizations](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/relations-of-organizations.png)



![Relations of organizations](https://github.com/openintegrationhub/innovation/blob/working_datamodel/images/relations-among-persons.png)          



**Privacy**

To deal with privacy issues you have to consider...

**Rights Management**

To deal with rights management you have to consider...

## 4. Results

**UML diagram**

**Json schema**

**Documentation of the final Master Data Model of Addresses**
