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
- [Enumerations](#enumerations)
	- [Person enumerations](#person-enumerations)
	- [OrganizationType enumerations](#organizationtype-enumerations)
	- [Url enumerations](#url-enumerations)
	- [Phone enumerations](#phone-enumerations)
	- [Fax enumerations](#fax-enumerations)
	- [Email enumerations](#email-enumerations)
	- [Social enumerations](#social-enumerations)

<!-- /TOC -->

# Objects
## Person

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|id|String|required|Unique identifier of the person|1||
|title|String|Nullable, enum|Academic degree of the person|"Dr."|"Prof.", "Prof.Dr.", "Dr.", "Dr.Dr.", "Prof.Dr.Dr.", "Ing.", "Dipl.Ing", "Mag.", "Ph.D."|
|salutation|String||Salutation of the person|"Mrs."||
|firstname|String||First name of the person|"Silke||
|middleName|String|Nullable|Middle name of the person|"Sandra"||
|lastName|String||Last name of the person|"Schaefer"||
|gender|String|enum|Gender of the person|"f"|"male", "female", "intersexual"|
|birthday|Date-time||Birthday of the person|"24-06-1982"||
|notes|String||Personal notes for the person|"Met at the winter summit"||
|createdAt|Date-time||Creation date of the person within the application|"06-02-2018"||
|updatedAt|Date-time||Last modifacation date of the person within the application|"10-02-2018"||
|displayName|String||Displayed name of the person within the application|"SiSchaefer"||
|companyName|String||Name of the company the person works at|"Incredible e.V."||
|tags|Array||Individual tags for the person|"Connector","DMS","CRM"||
|owner|String||Creator/owner of the data set for the person|"Pia Pattmann"||
|language|String||First language of the person|"German"||
|nickname|String||Nickname of the person within the application|"Sisa"||
|jobTitle|String||Job title of the person|"Sales Manager"||
|supervisor|Array (of objects of Person)||The supervisor of the person|Another Person Object||
|calendar|URI (iCal)||URI to the persons' calendar|http://cal.example.com/calA||
|requestCalendar|URI||URL to request an appointment with the person|janedoe@example.com||
|busyCalendar|URI||URL which described if the person is available or busy|http://www.example.com/busy/janedoe||
|photo|URI||Photo related to the person|http://example.org/photo.jpg||
|anniversary|date-time||Anniversary of the person|2018-07-01||
|[address](#address)|Array (of address objects)||Address of the person|An address object||
|[phone](#phone)|Array (of phone objectse)||Phone of the person|A phone object||
|[fax](#fax)|Array (of fax objects)||Fax of the person|A fax object||
|[email](#email)|Array (of email objects)||Email of the person|An email object||
|[url](#url)|Array (of url objects)||Url information of the person|An url object||
|[social](#social)|Array (of social objects)||Social information of the person|A social object||
|[PersonToOrganizationRelationship](#persontoorganizationrelationship)|Array (of personToOrganizationRelationships objects)||Relations of a person to organizations|A personToOrganizationRelationship object|-|

## Organization

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|id|String|required|Unique identifier of the organization|1||
|organizationName|String||Name of the organization|"Cloud Ecosystem e.V."||
|createdAt|Date-time||Creation date of the organization within the application|"06-02-2018"||
|updatedAt|Date-time||Last modifacation date of the organization within the application|"10-02-2018"||
|logo|URI||Logo of the organization|"http://example.org/logo.png"||
|[address](#address)|Array (of address objects)||Address of the organization|An address object||
|[phone](#phone)|Array (of phone objects)||Phone of the organization|A phone object||
|[fax](#fax)|Array (of fax objects)||Fax of the organization|A fax object||
|[email](#email)|Array (of email objects)||Email of the organization|An email object||
|[url](#url)|Array (of url objects)||Url information of the organization|An url object||
|[social](#social)|Array (of social objects)||Social information of the organization|A social object||
|[PersonToOrganizationRelationship](#persontoorganizationrelationship)|Array (of personToOrganizationRelationships objects)||Relations of an organization to person|A personToOrganizationRelationship object|-|

## PersonToOrganizationRelationship
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|relationshipType|String|-|Describes the relationship between a person and an organization|"employee"|-|
|function|String|-|Function of the person within the organization|"project leader"|-|
|department|String|-|Name of the department of the person's company |"Sales"|-|
|organizationUid|String|Required|Unique identifier of the organization|"341"|-|
|personUid|String|Required|Unique identifier of the person|"p464"|-|

## Address

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|street|String||Street name of the address|"Hohestr."||
|streetNumber|Number||Street number of the address|3||
|unit|String|||||
|zipcode|String||Zipcode of the address|"50667"||
|city|String||City of the address|"Cologne"||
|district|String||District of the address|"Altstadt-Sued"||
|region|String||Region/County of the address|"NRW"||
|country|String||Country of the address|"Germany"||
|countryCode|String||Countrycode of the address|"DE"||
|primaryContact|String||Primary contact for the address|"Herbert Hermann"||
|addressType|String||Type of the address|"Shipping address"|"Shipping Address", "Billing Address", "Post Address"|

## OrganizationType

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|organizationGroup|String|enum||"Customer"|"customer", "supplier", "parent company", "subsidiary"|
|abcType|String|enum|||"a", "b", "c"|

## Url

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|url|uri||Url of the person|"http://letsintegrate.blog.com"||
|urlType|String|enum|Type of url|"Blog"|"website", "blog", "downloadlink", "subscription"|

## Phone

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|phoneNumber|number||Phone number of the person/organization|0123456789||
|type|String|enum|Type of phone number|"business"|"private", "business"|
|category|String|enum|Ranking of the phone number|"Primary"|"primary", "secondary", "tertiary"|
|messenger|Array (of String)|enum|Enabled messenger for this number|"WhatsApp", "WeChat"|"WhatsApp", "WeChat", "QQ", "Viber", "Line", "Telegram" |
|isTextPhone|Boolean||Indicates a device for people with hearing or speech difficulties|false||
|textingEnabled|Boolean||Indicated if the device is able to receive text messages|true|...|

## Fax

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|faxNumber|String||Fax number of the person/organization|0123456788||
|type|String|enum|Type of fax number|"business"|"private", "business"|
|category|String|enum|Ranking of the fax number|"Secondary"|"primary", "secondary", "tertiary"|

## EMail

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|email|email||Email address of the person/organization|"s.schaefer@incredible.org"||
|type|String|enum|Type of email address|"Private"|"private", "business"|
|category|String|enum|Ranking of the fax number|"Secondary"|"primary", "secondary", "tertiary"|

## Social

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|network|String|enum|Name of social network|"xing"|"Facebook", "Twitter", "Xing", "LinkedIn", "Instagram", "Pinterest", "Reddit", "StackOverflow", "YouTube", "Skype", "Google+", "Flickr", "Slack"|
|userIdentifier|String||Provision social network ID or username|SiSaSchaefer|-|
|type|string|enum|Private or business use|private|"private", "business"|
