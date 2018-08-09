

# Introduction
This file is designed to present some common use cases and best practices for using the master data model for addresses for the specific use cases.
Each case includes some exemplary user stories as well as a mapping and a short description.

The cases are seperated by different usage scenarios.

## Minimal Scenario

|User Story Id| User Stories |
|:---| :--- |
|u-AdEx1|As a user I want to synchronize a private person and his/her contact data |
|u-AdEx2|As a user I want to synchronize an organization and his/her contact data |
|u-AdEx3|As a user I want to assign a person to different organizations with different contact data to see different roles or contexts of the same person|

#### Example Values
#### Person
|Key|Value|Context|
|:---|:---|:---|
|firstName|Jon|-|
|lastName|Doe|-|
|Phone|+49123456789|Private|
|mobilePhone|+499875612|Private|
|EMail|jon.doe@example.com|Private|

#### Organization
|Key|Value|Context|
|:---|:---|:---|
|name|JDub|-|
|logo|http://www.examplelogo.com|-|
|Phone|+49123456789|Support|
|EMail|support@jdub.com|Support|


#### PersonOrganization

|Key|Value|Context|
|:---|:---|:---|
|firstName|Jon|-|
|lastName|Doe|-|
|Phone|+49123456789|Company1|
|Phone2|+499875612|Company2|
|EMail|jon.doe@example.com|Company1|


### Best Practice
#### u-AdEx1
Just use the needed attributes from the "Person" object and from the "Address" object. The different phone numbers, email addresses and social media accounts are held within different "ContactData" objects.

#### u-AdEx2
See best [practice for u-Ex1](#u-ex1) but use the "Organization" object instead of the "Person" Object.

#### u-AdEx3
The link between the person and its organization is a "OrganizationToPersonRelationship". The person itself is held as a duplicate for every specific role and is linked via a "PersonToPersonRelationship" and marked as "SamePerson".

***

## Using Relations
### OrganizationToOrganizationRelationships

|User Story Id| User Stories |
|:---| :--- |
|u-AdEx4|As a user I want to lay down any kind of delivery and / or invoice addresses for my customers, to be able to deliver my goods and my invoices to any location. |

#### Example Values

|Key|Value|Context|
|:---|:---|:---|
|name|JDub|-|
|logo|http://www.examplelogo.com|-|
|Phone|+49123456789|Support|
|EMail|support@jdub.com|Support|
|Address1|Examplestreet 99, 50667 Cologne, Germany|Delivery|
|Address2|Examplestreet 90, 50667 Cologne, Germany|Invoice|

#### Best Practice
##### u-AdEx4

The organization itself is held as a duplicate. The different addresses are held within a "Address" object. The link between the organizations is a "OrganizationToOrganizationRelationship" and marked as "delivery address" or "invoice address".

### PersonToOrganizationRelationships

|User Story Id| User Stories |
|:---| :--- |
|u-AdEx5|As a user I want to synchronize a contact person from a company and his/her contact data |

#### Example Values
<img src="Assets/Scenario1.jpg" alt="Address Example" width="400" height="400"/>

#### Best Practice
##### u-AdEx5
You have to use the needed attributes from the "Person" object, from the "Organization" object and from the "Address" object. The different phone numbers, email addresses and social media accounts are held within different "ContactData" objects. The link between the person and its organization is a "OrganizationToPersonRelationship".

***

## Using Duplicates

|User Story Id| User Stories |
|:---| :--- |
|u-AdEx6|As a user I want to see which person has a role in different organizations|

### Example Values
<img src="Assets/Scenario4.jpg" alt="Address Example" width="900" height="300"/>

### Best Practice
#### u-AdEx6
The link between the person and the different organizations is done via the object "OrganizationToPersonRelationship". The person itself is held as a duplicate for every specific role and is linked via a "PersonToPersonRelationship" and marked as "SamePerson".
