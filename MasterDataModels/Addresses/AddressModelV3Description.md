<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Objects](#objects)
	- [Person](#person)
	- [Organization](#organization)
	- [Address](#address)
	- [Category](#category)
	- [ContactData](#contactdata)
	- [Calendar](#calendar)
	- [OrganizationToPersonRelationship](#organizationtopersonrelationship)
	- [PersonToPersonRelationship](#persontopersonrelationship)
	- [PersonToOrganizationRelationship](#persontoorganizationrelationship)
	- [OrganizationToAddressRelationship](#organizationtoaddressrelationship)
	- [PersonToAddressRelationship](#persontoaddressrelationship)

<!-- /TOC -->

# Objects

## Person

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|title|String|-|Academic degree of the person|"Dr."||
|salutation|String|-|Salutation of the person|"Mrs."|-|
|firstname|String|-|First name of the person|"Silke|-|
|middleName|String|-|Middle name of the person|"Sandra"|-|
|lastName|String|-|Last name of the person|"Schaefer"|-|
|gender|String|enum|Gender of the person|"female"|"male", "female", "intersexual"|
|birthday|Date-time|-|Birthday of the person|"1982-06-24"|-|
|notes|String|-|Personal notes for the person|"Met at the winter summit"|-|
|displayName|String|-|Displayed name of the person within the application|"SiSchaefer"|-|
|language|String|-|First language of the person|"German"|-|
|nickname|String|-|Nickname of the person within the application|"Sisa"|-|
|jobTitle|String|-|Job title of the person|"Sales Manager"|-|
|photo|String|-|Photo related to the person|http://example.org/photo.jpg|-|
|anniversary|date-time|-|Anniversary of the person|2018-07-01|-|
|[categories](#category)|Array (of category objects)|-|Category the person falls into|A category object array|-|
|[contactData](#contactdata)|Array (of contactData objects)|-|Contact data of a person|A contactData object array|-|
|[PersonToOrganizationRelationship](#persontoorganizationrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of a person to organizations|A personToOrganizationRelationship object array|-|
|[PersonToPersonRelationship](#persontopersonrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of two persons|An personToPersonRelationship object array|-|
|[calendar](#calendar)|Array (of calendar objects)|-|Calendar information of the person|A calendar object array|-|

In order to secure proper data integration, please satisfy the prescribed standard for the title and language attributes. This ensures that every connected application (and its connector) knows the format of incoming values. In the following a list of common title is presented:

- dr.
- dr.dr.
- dr.mult.
- dr.h.c.
- prof.
- prof.dr.
- ph.d.

The language attribute follows the [**IETF language tags**](https://en.wikipedia.org/wiki/IETF_language_tag) format. In this format `each language tag is composed of one or more "subtags" separated by hyphens (-). Each subtag is composed of basic Latin letters or digits only.`(_Source:_ [_Wikipedia_]((https://en.wikipedia.org/wiki/IETF_language_tag)). In the following a short list of the most used language tags is presented.

| English name for language |   Tag   |
|:--------------------------|:--------|
|English                    |en       |
|English (United States)    |en-US    |
|English (Great Britain)    |en-GB    |
|French                     |fr       |
|German                     |de       |
|Polish                     |pl       |
|Dutch                      |nl       |
|Finnish                    |fi       |
|Swedish                    |sv       |
|Italian                    |it       |
|Spanish (Spain)            |es       |
|Portuguese (Portugal)      |pt       |
|Russian                    |ru       |
|Portuguese (Brazil)        |pt-BR    |
|Spanish (Mexico)           |es-MX    |
|Chinese (PRC)              |zh-CN    |
|Chinese (Taiwan)           |zh-TW    |
|Japanese                   |ja       |
|Korean                     |ko       |

## Organization

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|String|-|Name of the organization|"Cloud Ecosystem e.V."|-|
|logo|String|-|Logo of the organization|"http://example.org/logo.png"|-|
|[category](#category)|Array (of category objects)|-|Category the organization falls into|A category object array|-|
|[contactData](#contactdata)|Array (of contactData objects)|-|Contact data of an organization|A contactData object array|-|
|[OrganizationToPersonRelationship](#organizationtopersonrelationship)|Array (of personToOrganizationRelationships objects)|-|Relations of an organization to person|A personToOrganizationRelationship object array|-|
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
|label|String|-|Can be used for a textual description the address|primary|-|
|[category](#category)|Array (of category objects)|-|Category the address falls into|A category object array|-|

## Category

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|String|-|Category the person / organization belongs to|"Customer"|-|
|label|String|-|Additional description of the category|"type a"|-|

## ContactData

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|type|String|-|Type of the contact data|email|-|
|label|-|Used to specify the contact data|E.g. "Mobile" (type: phone) or "facebook" (type: social media)||
|value|String|-|Value of the contact data|email@example.org|-|
|description|string|-|Can be used to further describe the contact data|"Primary"||


In order to secure proper data integration, please satisfy the prescribed standard for common contact data types. This ensures that every connected application (and its connector) knows the format of incoming values. In the following a list of common data types (and labels) is presented. If no further labelling is needed we suggest to leave the label field empty:

**General contact types:**
- email
- phone
- url
- fax
- social media


|Type:|email|phone|url|fax|social media|
|---:|:---|:---|:---|:---|:---|
|**Labels**|assistant|privateMobile|homepage|assistant|facebook|
||privateEmail|privateLandline|subscription|privateFax|xing|
||businessEmail|assistant||businessFax|linkedin|
||support|businessMobile|||skype|
|||businessMobile|||slack|
|||support|||google+|
||||||twitter|
||||||youtube|
||||||reddit|
||||||flickr|
||||||stackoverflow|
||||||pinterest|
||||||wechat|
||||||qq|
||||||whatapp|
||||||viber|
||||||telegram|

## Calendar

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|calendar|String|-|URI to the persons' calendar|http://cal.example.com/calA|-|
|requestCalendar|String|-|URL to request an appointment with the person|janedoe@example.com|-|
|busyCalendar|String|-|URL which described if the person is available or busy|http://www.example.com/busy/janedoe|-|
|label|String|-|Can be used for a textual description the calendar|primary|-|

## OrganizationToPersonRelationship

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|label|String|-|Describes the relationship between a person and an organization|"employee"|-|
|function|String|-|Function of the person within the organization|"project leader"|-|
|department|String|-|Name of the department of the person's company |"Sales"|-|
|targetUid|String|-|Target Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|
|sourceUid|String|-|Source Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|

## PersonToPersonRelationship

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|label|String|-|Describes the relationship between two persons|"employee"|-|
|targetUid|String|-|Target Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|
|sourceUid|String|-|Source Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|

## PersonToOrganizationRelationship

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|label|String|-|Describes the relationship between two organizations|"employee"|-|
|targetUid|String|-|Target Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|
|sourceUid|String|-|Source Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|

## OrganizationToAddressRelationship

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|label|String|-|Describes the relationship between an organization and an address|"delivery", "head quarter"|-|
|targetUid|String|-|Target Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|
|sourceUid|String|-|Source Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|

## PersonToAddressRelationship

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|label|String|-|Describes the relationship between two organizations|"employee"|-|
|targetUid|String|-|Target Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|
|sourceUid|String|-|Source Object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"|-|