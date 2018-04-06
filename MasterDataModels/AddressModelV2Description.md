Third iteration of the address data model description.
<!-- TOC depthFrom:2 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Person](#person)
- [Organization](#organization)
- [Address](#address)
- [OrganizationType](#organizationtype)
- [ContactData](#contactdata)
- [Calendar](#calendar)
- [PersonToOrganizationRelationship](#persontoorganizationrelationship)
- [PersonToPersonRelationship](#persontopersonrelationship)
- [OrganizationToOrganizationRelationship](#organizationtoorganizationrelationship)

<!-- /TOC -->

# Objects
## Person

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|id|String|required|Unique identifier of the person|1|-|
|title|String|-|Academic degree of the person|"Dr."||
|salutation|String|-|Salutation of the person|"Mrs."|-|
|firstname|String|-|First name of the person|"Silke|-|
|middleName|String|-|Middle name of the person|"Sandra"|-|
|lastName|String|-|Last name of the person|"Schaefer"|-|
|gender|String|enum|Gender of the person|"female"|"male", "female", "intersexual"|
|birthday|Date-time|-|Birthday of the person|"24-06-1982"|-|
|notes|String|-|Personal notes for the person|"Met at the winter summit"|-|
|displayName|String|-|Displayed name of the person within the application|"SiSchaefer"|-|
|language|String|-|First language of the person|"German"|-|
|nickname|String|-|Nickname of the person within the application|"Sisa"|-|
|jobTitle|String|-|Job title of the person|"Sales Manager"|-|
|photo|URI|-|Photo related to the person|http://example.org/photo.jpg|-|
|anniversary|date-time|-|Anniversary of the person|2018-07-01|-|
|[categories](#category)|Array (of category objects)|-|Category the person falls into|A category object array|-|
|[addresses](#address)|Array (of address objects)|-|Address of the person|An address object array|-|
|[contactData](#contactdata)|Array (of contactData objects)|-|Contact data of a person|A contactData object array|-|
|[PersonToOrganizationRelationship](#persontoorganizationrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of a person to organizations|A personToOrganizationRelationship object array|-|
|[PersonToPersonRelationship](#persontopersonrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of two persons|An personToPersonRelationship object array|-|
|[calendar](#calendar)|Array (of calendar objects)|-|Calendar information of the person|A calendar object array|-|

## Organization

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|organizationName|String|-|Name of the organization|"Cloud Ecosystem e.V."|-|
|logo|URI|-|Logo of the organization|"http://example.org/logo.png"|-|
|[category](#category)|Array (of category objects)|-|Category the organization falls into|A category object array|-|
|[address](#address)|Array (of address objects)|-|Address of the organization|An address object array|-|
|[contactData](#contactdata)|Array (of contactData objects)|-|Contact data of an organization|A contactData object array|-|
|[PersonToOrganizationRelationship](#persontoorganizationrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of an organization to person|A personToOrganizationRelationship object array|-|
|[OrganizationToOrganizationRelationship](#organizationtoorganizationrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of an organization to person|An OrganizationToOrganizationRelationship object array|-|

## Address

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|street|String|-|Street name of the address|"Hohestr."|-|
|streetNumber|Number|-|Street number of the address|3|-|
|unit|String|-|Unit of the address|"a"|-|
|zipcode|String|-|Zipcode of the address|"50667"|-|
|city|String|-|City of the address|"Cologne"|-|
|district|String|-|District of the address|"Altstadt-Sued"|-|
|region|String|-|Region/County of the address|"NRW"|-|
|country|String|-|Country of the address|"Germany"|-|
|countryCode|String|-|Countrycode of the address|"DE"|-|
|primaryContact|String|-|Primary contact for the address|"Herbert Hermann"|-|
|description|String|-|Can be used for a textual description the address|primary|-|

## Category

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|categoryName|String|-|Category the person / organization belongs to|"Customer"|-|
|description|String|-|Additional description of the category|"type a"|-|

## ContactData

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|value|String|-|Value of the contact data|email@example.org|-|
|type|String|-|Type of the contact data|email|-|
|description|string|-|Can be used for a categorization of same types of contact data or for additional information|"Primary"||

In order to secure proper data integration, please satisfy the prescribed standard for common contact data types. This ensures that every connected application (and its connector) knows the format of incomring common data types. In the following a list of common data types is presented:

**General contact types:**
- email
- phone
- url
- fax

**Common Social media / instant messenger contact types:**
- facebook
- xing
- linkedin
- skype
- slack
- google+
- twitter
- youtube
- reddit
- flickr
- stackoverflow
- pinterest
- wechat
- qq
- whatapp
- viber
- telegram

## Calendar
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|calendar|URI (iCal)|-|URI to the persons' calendar|http://cal.example.com/calA|-|
|requestCalendar|URI|-|URL to request an appointment with the person|janedoe@example.com|-|
|busyCalendar|URI|-|URL which described if the person is available or busy|http://www.example.com/busy/janedoe|-|
|description|String|-|Can be used for a textual description the calendar|primary|-|

## PersonToOrganizationRelationship
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|relationshipType|String|-|Describes the relationship between a person and an organization|"employee"|-|
|function|String|-|Function of the person within the organization|"project leader"|-|
|department|String|-|Name of the department of the person's company |"Sales"|-|

## PersonToPersonRelationship
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|relationshipType|String|-|Describes the relationship between two persons|"employee"|-|


## PersonToOrganizationRelationship
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|relationshipType|String|-|Describes the relationship between two organizations|"employee"|-|
