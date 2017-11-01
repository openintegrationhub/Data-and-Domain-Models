# Master Data Model Addresses

This document describes the evaluation of the master data model for address data
within in the Open Integration Hub.

**What is a Master Data Model?**

A master data model is a an abstract schema that organizes elements of data.
With this model the data can used and kept synchronized across applications.
With a master data management (MDM) - in the OIH-Project named
"Data Hub" the master data is stored central.

A master data model should be designed with following criterias in focus:
- All use cases and user stories for the different scenarios of integration
between applications of different domains can be matched and the master data of
all the applications can be mapped to the database schema.
- The model is generic and it can be extended on the application level.

# 1. Requirements for a Master Data Model

In this specific field of investigation, the master data model for addresses
describes a generic standard of customer data for the management of addresses
in both scenarios: business-to-business and business-to-consumer.

Processing personal data is a special subject of privacy rules and data
protection laws.

The master data model for the OIH should be:
- generic but extendable for individual applications
- used by the integration services and by the data hub
- cover most of the integration scenarios
- cover the privacy rules and data protection laws
- de facto standard for the address integration scenarios

**Topics, Use Cases, User Stories**

For the evaluation of the requirements we used topics, use cases and user
stories.

A topic describes the main issue, for example data integrity.

The use case describes a specific scenario, e. g. synching data between two
applications.

The user story describes a specific scenario from a user perspective.



***Use cases person to organization relations***

Transfer this from the old Document

***User stories person to organization relations***

Transfer this from the old document

***Use cases of the own organization relations to others***

Transfer this from the old Document

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

# 2. Findings

**Types and Relations**

There are two types of addresses:
- Organizations
- Persons

=> Extend this with the data model from Snazzy Contacts

There a different types of organizations, e. g. companies, associations, groups,
and different types of persons, e.g. contact persons in companies,
private contacts.

**Common Fields**

A typical address contains the following fields:

Organizations
...

Persons
...

**Privacy**

To deal with privacy issues you have to consider...

**Rights Management**

To deal with rights management you have to consider...

# 3. Conclusion

**Documentation of the final Master Data Model of Addresses** 
