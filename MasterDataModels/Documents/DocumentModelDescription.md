
Second iteration of the document data model description.
<!-- TOC depthFrom:2 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Object](#object)
- [Document](#document)
- [Folder](#folder)
- [Version](#version)
- [Document Property](#document-property)
- [Policy](#policy)
- [Sub Resource](#sub-resource)
- [Relation](#relation)

# Objects
## Object

Objects describe base properties that are used by documents, folders or additional implementations.

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|String||Name of the object|"Invoice #2018061023"||
|description|String||Additional information describing the object|"Invoice was sent on March 28th"||
|baseType|String|enum|Base type of the object|"document"|"document","folder"|
|parentUid|String||Id of the parent element if hierarchically organized|"291ecb5e-cd8f-46fd-ae0d-40b5e280f23a"||
|path|String||Path from root to the objects parent|"/Invoices/Company Corp./2018/"||
|lockedBy|Modification||Modification Object of the user that currently has locked the object.|{ "timestamp": "2012-04-21T18:25:43-05:00", "userId": "12322" }||
|metadata|Map<String, Object>||Map that contains all metadata as specified by: [specification of generic metadata](DocumentModelMetadataDescription.md)|||

## Document

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|currentVersion|Version||Current version of this document|||

## Folder

No additional properties available.

## Version

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|label|String||Label of the document version. Most likely used for version numbering.|"1.0.1"||
|comment|String||Version comment by the author|"Rescanned document due to bad quality"||
|creation|Modification|Timestamp and user that created the document version|||
|isLatestVersion|Boolean||Flag that indicates if this is the latest version of the document|true||
|isMajorVersion|Boolean||Flag that indicates if this is a major version of the document|true||
|size|Number||Filesize of the document version in bytes|2097152||
|mimeType|String||Mimetype of the file content|"image/png"|refer to http://www.iana.org/assignments/media-types/media-types.xhtml|
|url|String||Download url for the document version.|"http://myservice.com/api/document/get/9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"||
|uid|String||Id of the document version|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"||
|type|String|enum|Type of the document version.|"image"|"image", "mail", "word", "audio", "video"|
|extenstion|String||Type of the documents extension.|"pdf"|"jpg", "png"|

Document types are currently beeing specified.

## Document Property

Document properties can describe additional information depending on the documents type.
e.g. Systems that allow processing images can add the image size (width/height) in pixels.

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|type|String|enum|Type or identifier of the property|"width"||
|value|Object||value of the property|1920||

## Policy

Policies can describe how objects are handled by the system.
Invoices, for example, must be stored in a tamper-proof environment in order to comply with local law.
Therefore policies can be used to define retention or deletion policies.

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|type|String|enum|Type of the policy|"retention"|"retention", "deletion", "backup", "encryption", "storage"|
|value|String||Description of the policy|""||
|uid|String||Id of the policy|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"||

## Sub Resource

Sub resources can be used in order to provide additional information.
DMS/ECM/EIM systems usually provide additional functionality like extracting fulltext content or generating preview images of the document.

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|type|String|enum|Type of the sub resource|"rendition"|"rendition", "marker", "fulltext", "attachment"|
|info|String||Additional information or description of the subresource|"small"||
|size|Number||Filesize of the document version in bytes|2097152||
|mimeType|String||Mimetype of the sub resource content|"image/png"|refer to http://www.iana.org/assignments/media-types/media-types.xhtml|
|url|String||Download url for the sub resource|"http://myservice.com/api/document/subresource/get/9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"||
|uid|String||Id of the sub resource|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"||

## Relation

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|String||Name of the relation|"Relates to"||
|type|String|enum|Type of the relation|"link"|"link", "reference"|
|targetUid|String||target object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"||
|sourceUid|String||source object|"9bd1f8dd-5040-4b19-bbc9-c5cbb9c8d4b8"||

## Modification

As defined by OIHDataRecord.