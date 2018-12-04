# Changelog

The purpose of this changelog is to track all changes to the Open Integration Hub address data model.

|Model Version|Action|Affected Object|Affected Attribute|Old Type|New Type|updated at|
|---|---|---|---|---|---|---|
|v3|Delete Attribute|Person|addresses|array of address objects|-|2018-01-01|
|v3|Delete Attribute|Organization|addresses|array of address objects|-|2018-01-01|
|v3| Object|Address|-|-|-|2018-07-01|
|v3|Add Object|PersonToAddressRelation|-|-|-|2018-07-01|
|v3|Add Object|OrganizationToAddressRelation|-|-|-|2018-07-01|
|v3|Add attribute to UML|Relation|sourceUid|-|-|2019-01-01|
|v3|Add attribute to UML|Relation|targetUid|-|-|2019-01-01|
|v3|Add definitions to JSON Schema|Relation|PersonToAddressRelation|-|-|2019-01-01|
|v3|Add definitions to JSON Schema|Relation|OrganizationToAddressRelation|-|-|2019-01-01|
|...|...|...|...|...|...|...|