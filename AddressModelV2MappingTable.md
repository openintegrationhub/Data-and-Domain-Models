The following table represents a mapping table between the Snazzy Contacts Model and the [Open Integration Hub Master Data Model V2](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/ExtenstionAddressModel/MasterDataModels/Assets/OIHMasterDataModelAddresses_V2.svg).

## Person Object
|SnazzyContacts Model|Matches|OIH MasterDataModel|
|---|---|---|
|rowid| = |(ApplicationRecord) RecordUid|
|for_rowid| != (Can not properly be mapped) ||
|salutation| = |salutation|
|firstname| = |firstName|
|name| = |lastName|
|birthday| = |birthday|
|private_street| = |(address) street + (address) streetNumber|
|private_zip_code| = |(address) zipcode |
|private_town| = |(address) city|
|private_state| = |(address) region|
|private_country| = |(address) country|
|phone| = |(phone) phoneNumber|
|fax| = |(fax) faxNumber|
|email| = |(email) email|
|url| = |(url) url|

_Note:_ All other OIH MasterDataModel attributes for the person object are not needed.

**SnazzyContact Model coverage:** ~ 93% (14/15)

## Organization Object

|SnazzyContacts Model|Matches|OIH MasterDataModel|
|---|---|---|
|name| = |organizationName|
|street| = |(address) street|
|street_number| = |(address) streetNumber|
|zip_code| = |(address) zipcode|
|town| = |(address) city|
|state| = |(address) region|
|country| = |(address) country|
|phone| = |(phone) phoneNumber|
|fax| = |(fax) faxNumber|
|email| = |(email) email|
|url| = |(url) url|

_Note:_ All other OIH MasterDataModel attributes for the organization object are not needed.

**SnazzyContact Model coverage:** 100% (11/11)
