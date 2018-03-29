Third iteration of the address data model description. vCard attributes added to the model.
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Objects](#objects)
	- [Person](#person)
	- [Organization](#organization)
	- [personToOrganizationRelationship](#persontoorganizationrelationship)
	- [Address](#address)
	- [OrganizationType](#organizationtype)
	- [Url](#url)
	- [Phone](#phone)
	- [Fax](#fax)
	- [EMail](#email)
	- [Social](#social)

<!-- /TOC -->

# Objects
## Person

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|id|String|required|Unique identifier of the person|1|-|
|title|String|enum|Academic degree of the person|"Dr."|"Prof.", "Prof.Dr.", "Dr.", "Dr.Dr.", "Prof.Dr.Dr.", "Ing.", "Dipl.Ing", "Mag.", "Ph.D."|
|salutation|String|-|Salutation of the person|"Mrs."|-|
|firstname|String|-|First name of the person|"Silke|-|
|middleName|String|-|Middle name of the person|"Sandra"|-|
|lastName|String|-|Last name of the person|"Schaefer"|-|
|gender|String|enum|Gender of the person|"f"|"male", "female", "intersexual"|
|birthday|Date-time|-|Birthday of the person|"24-06-1982"|-|
|notes|String|-|Personal notes for the person|"Met at the winter summit"|-|
|createdAt|Date-time|-|Creation date of the person within the application|"06-02-2018"|-|
|updatedAt|Date-time|-|Last modifacation date of the person within the application|"10-02-2018"|-|
|displayName|String|-|Displayed name of the person within the application|"SiSchaefer"|-|
|language|String|-|First language of the person|"German"|-|
|nickname|String|-|Nickname of the person within the application|"Sisa"|-|
|jobTitle|String|-|Job title of the person|"Sales Manager"|-|
|photo|URI|-|Photo related to the person|http://example.org/photo.jpg|-|
|anniversary|date-time|-|Anniversary of the person|2018-07-01|-|
|[category](#category)|Array (of category objects)|-|Category the person falls into|A category object array|-|
|[address](#address)|Array (of address objects)|-|Address of the person|An address object array|-|
|[phone](#phone)|Array (of phone objectse)|-|Phone of the person|A phone object array|-|
|[fax](#fax)|Array (of fax objects)|-|Fax of the person|A fax object array|-|
|[email](#email)|Array (of email objects)|-|Email of the person|An email object array|-|
|[url](#url)|Array (of url objects)|-|Url information of the person|An url object array|-|
|[social](#social)|Array (of social objects)|-|Social information of the person|A social object array|-|
|[PersonToOrganizationRelationship](#persontoorganizationrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of a person to organizations|A personToOrganizationRelationship object array|-|
|[PersonToPersonRelationship](#persontopersonrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of two persons|An personToPersonRelationship object array|-|
|[calendar](#calendar)|Array (of calendar objects)|-|Calendar information of the person|A calendar object array|-|

## Organization

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|id|String|required|Unique identifier of the organization|1|-|
|organizationName|String|-|Name of the organization|"Cloud Ecosystem e.V."|-|
|createdAt|Date-time|-|Creation date of the organization within the application|"06-02-2018"|-|
|updatedAt|Date-time|-|Last modifacation date of the organization within the application|"10-02-2018"|-|
|logo|URI|-|Logo of the organization|"http://example.org/logo.png"|-|
|[category](#category)|Array (of category objects)|-|Category the organization falls into|A category object array|-|
|[address](#address)|Array (of address objects)|-|Address of the organization|An address object array|-|
|[phone](#phone)|Array (of phone objects)|-|Phone of the organization|A phone object array|-|
|[fax](#fax)|Array (of fax objects)|-|Fax of the organization|A fax object array|-|
|[email](#email)|Array (of email objects)|-|Email of the organization|An email object array|-|
|[url](#url)|Array (of url objects)|-|Url information of the organization|An url object array|-|
|[social](#social)|Array (of social objects)|-|Social information of the organization|A social object array|-|
|[PersonToOrganizationRelationship](#persontoorganizationrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of an organization to person|A personToOrganizationRelationship object array|-|
|[OrganizationToOrganizationRelationship](#organizationtoorganizationrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of an organization to person|An OrganizationToOrganizationRelationship object array|-|

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
|addressType|String|-|Type of the address|"Shipping address"|"Shipping Address", "Billing Address", "Post Address"|
|context|String|-|Context the address belongs to|"Organization ID"|-|

## Category

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|categoryName|String|-|Category the person / organization relates to|"Customer"|-|
|description|String|-|Additional description of the category|"type a"|-|

## Url

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|url|uri|-|Url of the person|"http://letsintegrate.blog.com"|-|
|description|String|-|Type of url|"Blog"|-|
|context|String|-|Context the url belongs to|"PersonToOrganizationRelationship ID"|-|

## Phone

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|phoneNumber|number|-|Phone number of the person/organization|0123456789|-|
|description|String|-|Type of phone number|"primary"|-|
|messenger|Array (of String)|-|Enabled messenger for this number|"WhatsApp", "Viber", "WeChat"|-|
|isTextPhone|Boolean|-|Indicates a device for people with hearing or speech difficulties|false|-|
|textingEnabled|Boolean|-|Indicated if the device is able to receive text messages|true|...|
|context|String|-|Context the phone belongs to|"private"|-|

## Fax

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|faxNumber|String|-|Fax number of the person/organization|0123456788|-|
|description|String|-|Type of fax number|"Secondary"|-|
|context|String|-|Context the fax belongs to|"PersonToOrganizationRelationship ID"|-|

## EMail

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|email|email|-|Email address of the person/organization|"s.schaefer@incredible.org"|-|
|description|String|-|Type of email address|"Primary"|-|
|context|String|-|Context the email belongs to|"PersonToOrganizationRelationship ID"|-|

## Social

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|network|String|-|Name of social network|"xing"|-|
|userIdentifier|String|-|Provision social network ID or username|SiSaSchaefer|-|
|description|string|-|Type of social information|"Primary"|"private", "business"|
|context|String|-|Context the social information belong to|"PersonToOrganizationRelationship ID"|-|

## Calendar
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|calendar|URI (iCal)|-|URI to the persons' calendar|http://cal.example.com/calA|-|
|requestCalendar|URI|-|URL to request an appointment with the person|janedoe@example.com|-|
|busyCalendar|URI|-|URL which described if the person is available or busy|http://www.example.com/busy/janedoe|-|
|context|String|-|Context the calendar information belong to|"private"|-|
