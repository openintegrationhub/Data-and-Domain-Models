The following table shall sum up the possible changes of a master data model and serve as an input for the decisions that must be made for all open issues.

|Use Case|Impacts on Transformers|Impacts on REST APIs|Impacts on Data Hub | Category |Shall Be Allowed?|
|---|---|---|---|---|---|
|Add object|+|+|+|minor |yes (see 6.)|
|Add optional attribute|+|+|+| minor|yes|
|Add mandatory attribute|+|+|+| major |? (see 1.)|
|Add enumeration option|+|+|+|minor |yes|
|Change object name|+|+|+|major |? (see 2. and 3.)|
|Change attribute name|+|+|+|major |? (see 2. and 3.)|
|Change enumeration option name|+|+|+| major|? (see 2.)|
|Change attribute type (compatible)|+|+|+|major |? (see 4.)|
|Change attribute type (incompatible)|+|+|+|major |no (see 4.)|
|Change attribute: optional -> mandatory|+|+|+|major |? (see 1.)|
|Delete object|+|+|+|major |no (see 5.)|
|Delete attribute|+|+|+|major |no (see 5.)|

_Note: All Use Cases marked with a `?` are outstanding and need a decision._

1. If a new attribute shall be mandatory or an existing optional attribute shall become mandatory, then things are
not that easy: APPs which use the old REST-APIs do not / could potentially not provide the mandatory attribute. A
solution for this
problem would be that an APP must provide the version number of the master data model version it wants to use and that the
corresponding versions of Transformers / REST APIs could be easily accessed (at runtime).

2. APPs which use the old REST-APIs do not provide the new name or type of the object / attribute / enumeration option
. A solution for this problem
would be that an APP must provide the version number of the master data model version it wants to use and that the corresponding
versions of Transformers / REST APIs could be easily accessed (at runtime).

3. Impacts on Data Hub: The name of the attribute or object in the data base object's schema must be changed.

4. Impacts on Data Hub: The type of the attribute in the data base object's schema must be changed and
the attribute values in old data base objects must be converted to the new type. This is only possible if the
conversion from the old data type to the new data type is compatible.

5. APPs which use old REST-APIs could provide the deleted attribute. Even if the old REST-APIs / Transformer versions
could be accessed, there still remains the problem that the corresponding data column does not exist any more (if no versionized data tables are used).

6. Note: The new object must not have mandatory attributes, for the same reason as described in 1. 


**Note:** There are other documents in the repository with similiar content.
Some of them are:

1. [VersioningMasterDataModels](VersioningMasterDataModel.md)
2. [ProcedureModelExtension](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/modelExtenstionProcedure/MasterDataModels/ProcedureModelExtension.md)
3. [SpecializedDataModelsExample](SpecializedDataModelsExample.md)
