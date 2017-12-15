# Master Data Model Addresses


## Table of content

<!-- TOC depthFrom:2 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Table of content](#table-of-content)
- [1. What is a Master Data Model?](#1-what-is-a-master-data-model)
- [2. Approach](#2-approach)
- [3. Requirements for a Master Data Model](#3-requirements-for-a-master-data-model)
	- [3.1 General Requirements](#31-general-requirements)
	- [3.2 User Requirements](#32-user-requirements)
		- [3.2.1 Epic 'Types of Objects'](#321-epic-types-of-objects)
			- [User stories attributes of organizations](#user-stories-attributes-of-organizations)
			- [Use case attributes of organization](#use-case-attributes-of-organization)
			- [User stories attributes of persons](#user-stories-attributes-of-persons)
			- [Use case attributes of persons](#use-case-attributes-of-persons)
		- [3.2.2 'Epic Relations'](#322-epic-relations)
			- [User stories relations person to organization](#user-stories-relations-person-to-organization)
			- [Use case relations person to organization](#use-case-relations-person-to-organization)
			- [User stories relations of organizations to other organizations](#user-stories-relations-of-organizations-to-other-organizations)
			- [Use case relations of organization to other organizations](#use-case-relations-of-organization-to-other-organizations)
			- [User stories of the own organization relations to others](#user-stories-of-the-own-organization-relations-to-others)
			- [Use case of the own organization relations to others](#use-case-of-the-own-organization-relations-to-others)
			- [User stories person to person relations](#user-stories-person-to-person-relations)
			- [Use cases person to person relations](#use-cases-person-to-person-relations)
			- [User stories person to organization relations](#user-stories-person-to-organization-relations)
			- [Use cases person to organization relations](#use-cases-person-to-organization-relations)
		- [3.2.3 Epic 'Rights Management'](#323-epic-rights-management)
			- [User stories Rights management](#user-stories-rights-management)
			- [Use case Rights management](#use-case-rights-management)
		- [3.2.4 Epic 'Data integrity'](#324-epic-data-integrity)
			- [User stories Data integrity](#user-stories-data-integrity)
			- [Use case Data integrity](#use-case-data-integrity)
		- [3.2.5 Epic 'Data quality'](#325-epic-data-quality)
			- [User stories Data quality](#user-stories-data-quality)
			- [Use case Data quality](#use-case-data-quality)
	- [3.3 Legal requirements](#33-legal-requirements)
		- [3.3.1 Epic 'Data protection'](#331-epic-data-protection)
			- [User stories Data protection](#user-stories-data-protection)
			- [Use case Data protection](#use-case-data-protection)
		- [3.3.2 Epic 'Data sovereignty'](#332-epic-data-sovereignty)
			- [User stories Data sovereignty](#user-stories-data-sovereignty)
			- [Use case Data sovereignty](#use-case-data-sovereignty)
	- [3.4 Standardization](#34-standardization)
		- [3.4.1 Standardization data formats](#341-standardization-data-formats)
			- [User stories standardization](#user-stories-standardization)
			- [Use case Standardization data formats](#use-case-standardization-data-formats)
- [4. Findings](#4-findings)
	- [4.1 Conceptual perspective](#41-conceptual-perspective)
		- [4.1.1 Type of Objects](#411-type-of-objects)
		- [4.1.2 Type of Relations](#412-type-of-relations)
		- [4.1.3 Privacy and Rights Management](#413-privacy-and-rights-management)
	- [4.2 Specification Perspective](#42-specification-perspective)
		- [4.2.1 General specifications](#421-general-specifications)
			- [4.2.1.1 Postal Standards](#4211-postal-standards)
			- [4.2.1.2 The vCard Standard](#4212-the-vcard-standard)
			- [4.2.1.3 Electronic data interchange (EDIfact)](#4213-electronic-data-interchange-edifact)
		- [4.2.2 Organization specific requirements](#422-organization-specific-requirements)
		- [4.2.3 Person specific requirements](#423-person-specific-requirements)
		- [4.2.4 Relation specific requirements](#424-relation-specific-requirements)
			- [4.2.4.1 Person to organization](#4241-person-to-organization)
			- [4.2.4.2 Organization to organization](#4242-organization-to-organization)
			- [4.2.4.3 Person to person](#4243-person-to-person)
		- [4.2.5 Privacy specific requirements](#425-privacy-specific-requirements)
- [5. Results](#5-results)
- [6. Questions](#6-questions)

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

![Approach Modeling](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/masterdatamodel-procedure.png)

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

#### 3.2.1 Epic 'Types of Objects'

If we talk here about addresses, we mean contact data such as names, addresses and telephone numbers. An address is a collection of information, presented in a mostly fixed format, used to give a location or a contact point, generally using political boundaries and street names as references, along with other identifiers such as house or apartment numbers. Some addresses also contain special codes, such as a postal code, to make identification easier and aid in the routing of mail.

In the real world there are two different types of objects with different scope of contact data:
- organization like company, foundation, institutes, ...
- person as real human contacts

Both have fields in common and have different fields. The users want to deal with this objects in different ways.

##### User stories attributes of organizations

| User story: | As a user I need informations about the location of the organization to travel or to ship something to the organization (e.g. letters, goods, etc.) to it. |
| :--- | :--- |

| User story: | As a user I need contact data of the organization to communicate in different channels (email, phone, fax, url,  ...) |
| :--- | :--- |

##### Use case attributes of organization

| Label        | USE CASE - Attributes of organizations |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes adding specific contact data to any kind of organization |
| **Trigger:** | A user wants to store contact data for an organization |
| **Preconditions:** | The organization is already stored |
| **Main Success Scenario:** | Added contact data |
| **Failure Scenario:** | Adding contact data was not successful |
| **Basic Workflow:** | 1. choose the organization<br/> 2. Add specific contact data, e.g. postal address, in the appropriate fields<br/> 3. Store the data  |
| **Alternative Workflow:** | 2a. Required fields are not available or in different format<br/> 3a. Add new field<br/> 3b. Use different field similar to the appropriate field.<br/> 4. Store the data.   |

##### User stories attributes of persons

| User story: | As a user I want to communicate with a person over different channels to have all possibilities to contact. |
| :--- | :--- |

| User story: | As a user I want to communicate with a person over different channels to have all possibilities to contact. |
| :--- | :--- |

| User story: | As a User I want to manage employee data of my organization to handle requirements of HR or user management. |
| :--- | :--- |

##### Use case attributes of persons

| Label        | USE CASE - Attributes of persons |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes adding specific contact data to any kind of persons |
| **Trigger:** | A user wants to store contact data for a person |
| **Preconditions:** | The person is already stored |
| **Main Success Scenario:** | Added contact data |
| **Failure Scenario:** | Adding contact data was not successful |
| **Basic Workflow:** | 1. choose the person<br/> 2. Add specific contact data, e.g. postal address, in the appropriate fields<br/> 3. Store the data  |
| **Alternative Workflow:** | 2a. Required fields are not available or in different format<br/> 3a. Add new field<br/> 3b. Use different field similar to the appropriate field.<br/> 4. Store the data.   |

#### 3.2.2 'Epic Relations'

##### User stories relations person to organization

| User story: | As a user I want to assign one or more persons to an organization to communicate with all contacts of an organization |
| :--- | :--- |

| User story: | As a user I want to assign a person to different organizations with different contact data to see different roles of the same person. |
| :--- | :--- |

| User story: | As a user I want to register the data of my own companies employees to use this data for the administration of the employees. |
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
| **Preconditions:** | the related organizations are stored in the database |
| **Main Success Scenario:** | Assignment took place |
| **Failure Scenario:** | Assignment not possible |
| **Basic Workflow:** | 1 Define first organization <br/> 2 Define second organization<br/> 3 Assign organization to organization relation |
| **Alternative Workflow:** |    |

##### User stories of the own organization relations to others

| User story: | As a user I want to categorize the organizations as customer, lead, partner, supplier, ... to segment my target groups.|
| :--- | :--- |

| User story: | As a user I want to categorize my my customers, lead, supplier for e.g. in 'A - very important', 'B - important' oder 'C - less important' to classify my target groups.|
| :--- | :--- |

##### Use case of the own organization relations to others

| Label        | USE CASE - Relations of own organization to others |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes setting the relations of a users own organization to other organizations  |
| **Trigger:** | A user wants to assign relations of its own organization to other organizations and uses therefor categories |
| **Preconditions:** | Addresses are stored in the database |
| **Main Success Scenario:** | The desired addresses are assigned with the desired categories. |
| **Failure Scenario:** |  |
| **Basic Workflow:** | 1. choose the desired addresses <br/> 2. choose the desired categories <br/> 3. Assign the categories to the addresses |
| **Alternative Workflow:** | 2a. The desired categories are not provided.<br/> 3a. Input of the new categories<br/> 4. Assign new categories to the addresses   |

##### User stories person to person relations

| User story: | As a user I want to assign relations between contact persons of my customers to get an overview of their hierarchy. |
| :--- | :--- |

| User story: | As a user I want to store same persons in different organizations, to get in contact with them currently at the time with the particular contact data. |
| :--- | :--- |

| User story: | As a user I want to see, if a specific person in an organization is the same person as in another organization |
| :--- | :--- |

##### Use cases person to person relations

| Label        | USE CASE - Assignment of Person to Person relations |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes the Assignment of person to person relations in a specific organization |
| **Trigger:** | A User wants to store relations of persons in an organization |
| **Preconditions:** | The organization and the persons are stored in the database |
| **Main Success Scenario:** | The desired persons are put in relations |
| **Failure Scenario:** | Assignment not possible |
| **Basic Workflow:** | 1. choose the desired persons<br/> 2. choose the desired description of the relations<br/> 3. Store the relation in the database |
| **Alternative Workflow:** | 2a. The desired type of relation is not available.<br/> 3a. Input the type of relation<br/>3b. Associate the persons with the new relations 4. Store the relation in the database.   |

| Label        | USE CASE - See Person to Person relations |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes the inquiry about same persons stored in different organizations  |
| **Trigger:** | A User wants to see if a person in an organization is the same person as in another organization |
| **Preconditions:** | The organizations and the persons are stored in the database |
| **Main Success Scenario:** | See whether its the same person or not |
| **Failure Scenario:** | It's not possible to see same persons. |
| **Basic Workflow:** | 1. choose the desired persons<br/> 2. See if there is a relation to the same person in another organization. |
| **Alternative Workflow:** | 2a. Do a global search for similar persons   |

##### User stories person to organization relations

| User story: | As a user I want to assign distinguishing features to contact persons, so that i can categorize them.  |
| :--- | :--- |

| User story: | As a user I want to see the function of a person in his organization. |
| :--- | :--- |

| User story: | As a user I want get all the contact persons with a specific function in an organization, so that i can use them in a marketing campaign. |
| :--- | :--- |


##### Use cases person to organization relations

| Label        | USE CASE - Categorize contact persons with distinguishing features. |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Assignment of categories to contact persons.  |
| **Trigger:** | A user wants to assign categories to contact persons.  |
| **Preconditions:** | Contact Persons are stored in the database. |
| **Main Success Scenario:** | The desired contact persons are assigned with the desired categories.  |
| **Failure Scenario:** |  |
| **Basic Workflow:** | 1. choose the desired addresses<br/> 2. choose the desired categories<br/>3. Assign the categories to the addresses  |
| **Alternative Workflow:** | 2a. The desired categories are not provided. <br/>3a. Input of the new categories<br/> 4. Assign new categories to the addresses   |

#### 3.2.3 Epic 'Rights Management'

##### User stories Rights management

| User story: | As Administrator I have to control which user can read, write, edit or delete addresses. |
| :--- | :--- |

| User story: | As Administrator I have to control which external system can access the contacts in my database. |
| :--- | :--- |

| User story: | As Administrator I don't want to grant privileges to the users for every system in use. |
| :--- | :--- |

##### Use case Rights management

| Label        | USE CASE - Rights Management Groups |
| :---  | :---  |
| **Actor:** | Administrator |
| **Summary:** | Grant or withdraw users access rights |
| **Trigger:** | An Administrator wants to control the access rights of the users. |
| **Preconditions:** |  |
| **Main Success Scenario:** | Privileges are altered |
| **Failure Scenario:** | Privileges not altered |
| **Basic Workflow:** | 1. choose a user group<br/> 2. Alter the privileges<br/> 3. Save new privileges |
| **Alternative Workflow:** | 1a. Create new user group.<br/> 2. Define privileges.<br/> 3. Save the new group.<br/> 4. Put desired users in the new group.   |

| Label        | USE CASE - Rights Management for Contacts |
| :---  | :---  |
| **Actor:** | Administrator |
| **Summary:** | Grant or withdraw users access rights for individual contacts |
| **Trigger:** | An Administrator wants to control the access rights of the users. |
| **Preconditions:** | User groups are defined |
| **Main Success Scenario:** | Privileges are altered |
| **Failure Scenario:** | Privileges not altered |
| **Basic Workflow:** | 1. choose the contact data<br/> 2. Alter the user group<br/> 3. Save new privileges |
| **Alternative Workflow:** | 1a. Put or remove a user in a specific user group which can access or should nor more access an entry.<br/> 2. Save definition.   |

#### 3.2.4 Epic 'Data integrity'

##### User stories Data integrity
| User story: | As a user I want to have my data consistent across multiple systems. |
| :--- | :--- |

##### Use case Data integrity

| Label        | USE CASE Data integrity |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** |  |
| **Trigger:** | User wants consistent data across all used systems. |
| **Preconditions:** |  |
| **Main Success Scenario:** |  |
| **Failure Scenario:** |  |
| **Basic Workflow:** |  |
| **Alternative Workflow:** |    |

#### 3.2.5 Epic 'Data quality'

##### User stories Data quality

| User story: | As a User I want to enrich entries in my database with additional informations from other sources, so that i have additional informations or further contact possibilities. |
| :--- | :--- |

| User story: | As a User I want to find double entries in my database to eliminate them to have the possibility to clean my database of double entries. |
| :--- | :--- |

| User story: | As a User I want an update of my data automatically synchronized between different systems, because I don't want to do it manually. |
| :--- | :--- |

| User story: | As a User I want to validate the existence of in one system with another system, so that i am sure, that all systems contains the same data. |
| :--- | :--- |

##### Use case Data quality

| Label        | USE CASE - Enrich data |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes enrichment of the entries in my database with additional informations. |
| **Trigger:** | A user wants to add further information to existing data. |
| **Preconditions:** | Contacts are stored in the database. |
| **Main Success Scenario:** | Additional data is stored in the database  |
| **Failure Scenario:** | Enrichment not possible |
| **Basic Workflow:** | 1. choose contacts for enrichment <br/> 2. choose data with further informations<br/> 3. The system adds the new information to the data |
| **Alternative Workflow:** | 3a. Automatic adding of new information is not possible.<br/>4. User has to define the fields for the new informations.<br/> 5. The system adds the new information to the data.   |

| Label        | USE CASE - Find double entries |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes inspection of the database for double entries |
| **Trigger:** | A user wants to inspect the database for double entries. |
| **Preconditions:** | Contacts are stored in the database. |
| **Main Success Scenario:** | See if there are double entries.  |
| **Failure Scenario:** | Inspection not possible |
| **Basic Workflow:** | 1. choose contacts for inspection. <br/> 2. See possible double entries. |
| **Alternative Workflow:** | 3. choose the double entries for merging<br/> 4. Merge the desired entries.   |

| Label        | USE CASE - Validate Contact Data across different Systems |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes inspection of the database for possible double entries. |
| **Trigger:** | A user wants to validate the entries across different systems |
| **Preconditions:** | Running connection between the different systems |
| **Main Success Scenario:** | See if there is a difference between the entries in the databases of the different systems.  |
| **Failure Scenario:** | Inspection not possible |
| **Basic Workflow:** | 1. choose the different systems for validation <br/> 2. Start validation.<br/> 3. See the difference |
| **Alternative Workflow:** | 4. Synchronize the different systems.   |

### 3.3 Legal requirements

#### 3.3.1 Epic 'Data protection'

##### User stories Data protection

| User story: | As a User I have to delete single contact persons from all the systems in which they are stored if a person demands this. (§35 BDSG) |
| :--- | :--- |

| User story: | As a User I have to correct individual fields from contact entries from all the systems in which they are stored of a person demands this. (§35 BDSG) |
| :--- | :--- |

| User story: | As a User I have to block individual contacts for further approaches from all the systems in which they are stored if they demands this. (§35 BDSG) |
| :--- | :--- |

| User story: | As a User I must be able to control the blocking of data for every system. (§35 BDSG) |
| :--- | :--- |

| User story: | As a User I must not delete addresses if legal requirements, statutes or contractual requirements stand in the way of this. In this case they have to be blocked. |
| :--- | :--- |

##### Use case Data protection

| Label        | USE CASE - Delete single contacts from all the systems.  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes the removing of contact data from all the systems  |
| **Trigger:** | A User has to remove contacts from the databases |
| **Preconditions:** | Contact Data is stored in the database. |
| **Main Success Scenario:** | Contact data is removed. |
| **Failure Scenario:** | Contact data not removable |
| **Basic Workflow:** | 1. Identify the contact person.<br/> 2. Flag contact person for removal.<br/> 3. Start removing process 4. See a list from all the systems where the contact person has been removed.  |
| **Alternative Workflow:** | 4a. See a list of the cases where it is not possible to remove the contact person from a specific system. 5. Decide further process for this cases (e.g. block).   |

| Label        | USE CASE - Block single contacts from all the systems.  |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes the blocking of contact data from all the systems  |
| **Trigger:** | A User has to block contacts from the databases |
| **Preconditions:** | Contact Data is stored in the database. |
| **Main Success Scenario:** | Contact data is blocked |
| **Failure Scenario:** | Contact data not blockable |
| **Basic Workflow:** | 1. Identify the contact person.<br/> 2. Flag contact person for blocking.<br/> 3. Start blocking process 4. See a list from all the systems where the contact person has been blocked.  |
| **Alternative Workflow:** | 4a. See a list of the cases where it is not possible to block the contact person from a specific system. 5. Decide further process for this cases (e.g. remove).   |

#### 3.3.2 Epic 'Data sovereignty'

##### User stories Data sovereignty

| User story: | As a User I want to import contact data from an Excel file into my database |
| :--- | :--- |

| User story: | As a User I want to import contact data from Outlook into my database. |
| :--- | :--- |

| User story: | As a User I need addresses in the vCard-Format, but my contact manangement programm only exports csv data.   |
| :--- | :--- |

##### Use case Data sovereignty

| Label        | USE CASE - Import of addresses |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Import of data.   |
| **Trigger:** | A user wants to import contact data |
| **Preconditions:** | Contact Data stored in a file  |
| **Main Success Scenario:** | Data is imported |
| **Failure Scenario:** | Import not possible |
| **Basic Workflow:** | 1. choose the desired contact data<br/> 2. Export or Import the data |
| **Alternative Workflow:** | 2a. Data for the import is an unsupported format. 3. Convert the data in a supported format. 4. Import the data.    |

| Label        | USE CASE - Export of addresses |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Export of data.   |
| **Trigger:** | A user wants to export contact data |
| **Preconditions:** | Contact Data stored in the contact database |
| **Main Success Scenario:** | Data is exported |
| **Failure Scenario:** | Export not possible |
| **Basic Workflow:** | 1. choose the desired contact data<br/> 	2. choose the desired format for the export 3. Export the data |
| **Alternative Workflow:** | 3a. Export is not possible 3. Copy & Paste ever entry in the database by manually.    |

| User story: | As a User I want to substitute our CRM-Software with another CRM-Software and i want to transfer my contact data. |
| :--- | :--- |

| User story: | As a User I want to transfer my contact data in the event of a new order from our CRM-Software to our ERP-Software. |
| :--- | :--- |

| User story: | As a User I want to transfer the e-mail-addresses and names to a newsletter system for my marketing campaigns. |
| :--- | :--- |

| User story: | As a User I want to transfer my contact data from our customer database to our telephone system for the recognition of the callers. |
| :--- | :--- |

| Label        | USE CASE - Migration of addresses |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Convert data into specific format.   |
| **Trigger:** | A user wants to import or export contact data from or to a specific data format. |
| **Preconditions:** | Contact Data stored in a contact database |
| **Main Success Scenario:** | Data is imported or exported |
| **Failure Scenario:** | Export or import not possible |
| **Basic Workflow:** | 1. choose the desired contact data<br/> 2. choose the desired data format 3. Export or Import the data |
| **Alternative Workflow:** | 2a. Desired format is not supported 3a. Export data in an alternative supported format.     |

| Label        | USE CASE - Automatic transfer of addresses |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Automatic transfer of addresses from one system to another.   |
| **Trigger:** | A user wants to have contact data automatically transfered from one system to another. |
| **Preconditions:** | Contact Data stored in a contact database |
| **Main Success Scenario:** | Data is transferred |
| **Failure Scenario:** | Transfer not possible |
| **Basic Workflow:** | 1. choose the source system of the contact data<br/> 2. choose the desired target system<br/> 3. Data is transfered to the target system  |
| **Alternative Workflow:** | 2a. Target System not reachable 3a. Throw failure message.     |

### 3.4 Standardization

#### 3.4.1 Standardization data formats

##### User stories standardization

| User story: | As a User I want to manage international postal addresses in a standardized format, so that my colleagues search them and my company nevertheless can send letters by post in the local format. |
| :--- | :--- |

| User story: | As a User I want the telephone numbers in a standardized format, so that my telephone system can recognize the callers. |
| :--- | :--- |

| User story: | As a User I want the birthday dates in a standardized format, so that I can use them for the marketing. |
| :--- | :--- |

| User story: | As a User I want the stored statistical data (e.g. company size, revenue etc.) in a standardized format, so that I can use them for the marketing. |
| :--- | :--- |

##### Use case Standardization data formats

| Label        | USE CASE - Standardization of data |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes standardization of data |
| **Trigger:** | A user wants to add standardize existing data in a specific format. |
| **Preconditions:** | Contacts are stored in the database. |
| **Main Success Scenario:** | Data is standardized  |
| **Failure Scenario:** | Standardization not possible |
| **Basic Workflow:** | 1. choose fields for standardization <br/> 2. choose format for standardization<br/> 3. The system standardize the informations. |
| **Alternative Workflow:** | 2a. The desired field is not suitable for standardization<br/> 2b. The format is not suitable for this field <br/> 2c. There is no standard format for this field.   |


## 4. Findings

As seen in chapter 3, there are a lot of issues to consider when dealing with addresses. In the following chapter we want to summarize the findings of the use cases and user stories and expound the problems and questions and synchronize them with our goals.

Our main goal is the vision of a generic master data model for addresses. This vision is the subject of a following refinement. From the main goals we come to subgoals. This goals and the epics are the foundation of solvable requirements we need for the master data model.

### 4.1 Conceptual perspective

#### 4.1.1 Type of Objects

In Chapter 3.2.1 we encountered different types of objects. We named them organizations and persons with reference to the real world objects.

![Type of addresses](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/types-of-addresses.png)

Organizations can be companies or associations. Persons can be contacts in organizations or employees of your own company.

From this real world view we derive the two main objects and go deeper in the modeling. The following graphic describes the process.

![Typing of addresses](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/typing-of-addresses.png)

With this dividing in persons and organizations we are able to solve the problems raised in chapter 3.2.2., so we can assign a different amount of persons to an organization, can assign on person to different organizations or can assign relations between persons.

As you can see in the graphic, from organizations and persons we earn data objects for labels and relations.

#### 4.1.2 Type of Relations

In Chapter 3.2.2. we learned a lot about the different kind of relations. A common address for example is just a relation of a set of address field to an object of an organization or a person which are required to serve the specific purpose, for example sending a letter. This relation can be labelled with a category. The relations are for example the delivery address from the company or the business contact data for the person.

With this we can solve the problems raised by the user stories and use cases in Chapter 3.2.1. and 3.2.2 which are about the different locations of one organization, the structure of a group of companies or if you have same person at different organizations and you want to contact the persons with the specific contact data from one of the organizations.

A label could be a tag or category like "customer" or "lead" for an organization or "CEO" for a person. With this we can meet most of the expectations from the user stories in 3.2.1. and 3.2.2 for example we can see the function of a person in an organization or we can see the relation of our company to companies stored in the database.

Derived from labels and relations we get segments for meta data and organization or personal data. Those have attributes like categories or the specific address fields.

#### 4.1.3 Privacy and Rights Management

As discovered in use cases like 3.3.1. or for general data management we need additional attributes for rights management or database management. An entry in the database can have the known fields, e.g. the common contact fields and the categories, and can be vested with some access rights. Further it must have fields like unique identifiers. We grouped these attributes in a "handling data" segment.

### 4.2 Specification Perspective

#### 4.2.1 General specifications

As we talk about address data and most of the user requirements are about communication, we need standard fields to reach out persons or organizations via postal, electronic or direct communication.

##### 4.2.1.1 Postal Standards

The Universal Postal Union has developed two addressing standards: S42 and S53. S42 describes international postal address components and templates, where S53 describes the exchange of name and address data. Since 2004 there is a development process for an international ISO-Standard for international addresses. This ISO-Standard 19773 provides in part 8 the description of the data structure postal addresses. The UPU S42 address elements are used as a basis for constructing a postal address.

In ISO 19773 an unrendered postal address consists of four postal address segments: mailee specification (optional), addressee specification (optional), mail recipient dispatching information (optional), delivery point specification (mandatory).

![Postal Address — All Components - diagram from UPU S42](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/postal_adress_diagram_upus42.png)

The unrendered postal address is a nested structure comprised of elements. As we can see, this standard divides addressee specifications in organization or individual identification as we do. It provides a lot of named fields for detailed address specifications to which we can refer in the object attribute specification later on.

For further information please read the ISO 19773 specification at http://metadata-standards.org/metadata-stds/Document-library/Meeting-reports/SC32WG2/2004-11-Washington/WG2-N0723_19773-08_rs1--upu_s42_postal_data--20041104.doc

##### 4.2.1.2 The vCard Standard

A very common interchange format for addresses is vCard. vCard, also known as VCF (Virtual Contact File), is a file format standard for electronic business cards. There are different versions of the vCard-Format. The most used in recent years (ref. 2016) for data interchange is vCard 3.0. The complete standard is referenced in https://tools.ietf.org/html/rfc6350.

In the reference we will find different kind of fields for addresses. A typical vCard looks like this:

```
BEGIN:VCARD
VERSION:2.1
N:Gump;Forrest
FN:Forrest Gump
ORG:Bubba Gump Shrimp Co.
TITLE:Shrimp Man
PHOTO;GIF:http://www.example.com/dir_photos/my_photo.gif
TEL;WORK;VOICE:(111) 555-1212
TEL;HOME;VOICE:(404) 555-1212
ADR;WORK:;;100 Waters Edge;Baytown;LA;30314;United States of America
LABEL;WORK;ENCODING=QUOTED-PRINTABLE:100 Waters Edge=0D=0ABaytown, LA 30314=0D=0AUnited States of America
ADR;HOME:;;42 Plantation St.;Baytown;LA;30314;United States of America
LABEL;HOME;ENCODING=QUOTED-PRINTABLE:42 Plantation St.=0D=0ABaytown, LA 30314=0D=0AUnited States of America
EMAIL;PREF;INTERNET:forrestgump@example.com
REV:20080424T195243Z
END:VCARD
```

As we can see, the vCard defines different fields for work and home. The "work" value implies that the property is related to an individual's work place, while the "home" value implies that the property is related to an individual's personal life. When neither "work" nor "home" is present, it is implied that the property is related to both an individual's work place and personal life.

Organizations can be mapped with the "org"-parameter. All properties in an organization vCard apply to the organization as a whole, as is the case with a group vCard. For example, an EMAIL property might specify the address of a contact point for the organization.

vCard mentions a "related"-parameter to specify a relationship between another entity and the entity represented by a vCard. It's a single URI which can also be reseted to a single text value. Further on you will find categories to specify application category information about the vCard, also known as "tags". These are one or more text values separated by a comma character.

To specify a value that represents a globally unique identifier corresponding to the entity associated with the vCard you can use the UID-Param. This should be a single URI value. But it MAY also be reset to free-form text.

This all sounds very useful and we can use the specification later in the object attribute specification.

But be aware: Standards are great if everyone follows them. Unfortunately, nobody seems to be following the card standard. Simple contact information such as email addresses, telephones numbers or postal addresses can be represented using standard properties or using standard properties grouped together with non-standard properties. For that reason a lot of problems occur, when dropping vCards from different sources into a database which tries to guarantee high standards in address quality, because you can't match the fields properly.

##### 4.2.1.3 Electronic data interchange (EDIfact)

Electronic Data Interchange for administration, commerce and transport (EDIfact) is the concept of businesses communicating electronically certain information that was traditionally communicated on paper. The two classic examples of such information are purchase orders and invoices. Standards for EDI exist to facilitate parties transacting such instruments without having to make special arrangements.

```
UNA:+.?'
UNB+UNOC:3+ILNAbsender+ILNEmpfänger+130230:1025+98765'
UNH+1+ORDERS:D:96A:UN'
BGM+220+9'
DTM+4:20130230:102'
NAD+SU+++Hardwarequelle+Ladenstraße 1+Nirgendwo+NRW+54321+DE'
NAD+BY+++Lobster:GmbH+Münchnerstr.15a+Starnberg+BAY+82319+DE'
LIN+1++4711:SA'
IMD+++::USB-Stick'
QTY+1:100'
UNS+S'
CNT+2:1'
UNT+11+1'
UNZ+1+98765'
```

In EDIfact addresses are specified directly. There is no further relevance for the Master Data Model.

#### 4.2.2 Organization specific requirements

As mentioned before, an organization can be a company, an association etc. For handling communication with the organization as described in the user stories from chapter 3.2.1. it must have contact data, so you can reach it via the different channels. Therefore we must have object attributes for the postal address and other communication points like telephone, mail etc.

The most common address attributes for communication are:

- `number` - the house number of an address
- `street` - the street the address is on
- `unit` - the apartment, suite, flat, etc of an address
- `city` - the city that the address is in
- `district` - one step up in the hierarchy from a city, such a county or metropolitan area
- `region` - the first level administrative divisions within a country, such as state or province
- `postcode` - the alphanumeric code used in many countries for sorting mail
- `phone`- the numeric phone number
- `fax` - the numeric fax number
- `email` - a valid email address
- `url` - a url of the website of the organization
- `social` - one or more social network addresses

In an ideal world, data sources would have a single field for each OIH conform attribute. Unfortunately that's rarely the case. So we have to deal with this problem and we will need a number of functions to separate and join fields to create appropriate values.

As described in the user stories in chapter 3.2.2. you have to assign categories, tags or other features to an organization.

With that in mind, we will need attributes like `categories` which describes a list of assigned categories. And we must be able to bring different organizations in relation to other organizations and to single individuals.

#### 4.2.3 Person specific requirements

As mentioned before, if we deal with addresses we often need to store, retrieve or update contact data of persons. A person can be a single individual or a member of an organization. With that in mind, we need contact data attributes and we need relations to the organization.

If we store personal informations of individuals we are in contact with the privacy rules and privacy laws. This specific requirements are described later on.

To reach a single individual we need the typical address attributes as mentioned in the chapter above (4.2.2.). But there are some complications. Whereas an organization will have a clear regularity for emails or telephone numbers, like xxx@yyy.de or +494012345-xx, individuals tends towards having multiple email-addresses without any regularity, like humptydumpy@googlemail.com and nittygritty@web.de, and multiple telephone numbers.

We often don't have a complete set of contact data but only a name and an email address (e.g. in the marketing use cases). For example for better sales conversions, companies want to aggregate contact data from different sources into one entry (see chapter 3.2.5.). So we must be able to deal with low data quality and improve it over the time. That means, we will need a number of functions to separate and join fields to create appropriate values.

With that in mind, we can approach the attributes for persons.

A person is identified with the following attributes:
- `name`- a surname
- `firstname`- a given name

There are a lot of additional attributes describing a person, like:
- `middlename` - a given second name
- `salutation` - a form of address
- `title` - a title or academic grade
- `gender` - a persons sex

Then you will find a set of direct communication attributes, like:
- `phone`- one or more numeric phone numbers
- `email` - one or more valid email addresses
- `social`- one or more social network profiles

In postal communication we need the typical attributes as mentioned before for the organizations.

As described in the user stories in chapter 3.2.2. you have to assign categories, tags or other features to a person. That means, we will need attributes like `categories` which describes a list of assigned categories. And we must be able to bring persons in relation to organizations and to other single individuals.

#### 4.2.4 Relation specific requirements

Up to now we mentioned the different kind relations of persons or organizations in different chapters of this document. Dealing with this relations is a crucial requirement in the address management.

Generally there are three types of relations:
- Persons to organizations
- Persons to persons
- Organizations to organizations

If the task would only be a relation between the two objects persons and organizations, we could directly link them together. But we need a naming of this relation and as mentioned in chapter 3.2.2. users want to categorize single entries for the description of the relations of a users own organization to other organizations or persons or to see the function of a person in his organization. Therefore we need a more generic approach for storing relations, categories, tags or other distinguishing features. That's the reason, why we introduce a specific object this.

In the following chapters, we outline the different kind of relations. The attributes in the graphic are only placeholders for better differentiation.

##### 4.2.4.1 Person to organization

![Relationship person organization](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/use-case-relationship-person-organization.png)

The following diagram shows how the mapping of these entity relations can be realized in the data model:

![Relationship person organization](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/ER-Persons-relations-organizations.png)

##### 4.2.4.2 Organization to organization

![Relations of organizations](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/relations-of-organizations.png)

The following diagram shows how the mapping of these entity relations can be realized in the data model:

![Relations of organizations](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/ER-organizations-relations-organizations.png)

##### 4.2.4.3 Person to person

![Relations of organizations](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/relations-among-persons.png)

The following diagram shows how the mapping of these entity relations can be realized in the data model:

![Relations of organizations](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/ER-Persons-relations-persons.png)

The relations data object could have attributes like:
- `label`- a label, which describes the relation
- `labeltype` - a value, which describes the type of relation
- `idin` - a unique id from the incoming entry
- `idout` - a unique id from the outgoing entry

#### 4.2.5 Privacy specific requirements

As discovered in the use cases in chapter 3.3.1. and described in chapter 4.1.3 we need additional attributes for rights management and privacy enforcement. The user stories in chapter 3.3.1 tell us about the requirements of the privacy laws (in Germany the "Bundesdatenschutzgesetz", EU-wide it's the "EU General Data Protection Regulation" ).

We must be able to delete, alter or block entries in the connected systems. To complicate things, we must be able to delete an entry in one system and block it in another system, because there can be some other legal issues, which forbid the deletion of an entry. Deeper down, we need the ability to regulate, which system or user can alter individual attributes of an object.

For the privacy requirements (and the rights management requirements as well) we propose to use a handling object, like the one we used for the categories.

## 5. Results

![UML Draf OIH Master Data Model Addresses](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/OIHMasterDataModelAddressesUML.png)

**Json schema**

**Documentation of the final Master Data Model of Addresses**

## 6. Questions

This points should be added as issues.


**To be discussed:**
- generic problems
- handling with freely definable additional fields
- handling with same person in different roles …
- are employees, user persons  to take into account?
- date integrity
- architecture requirements
