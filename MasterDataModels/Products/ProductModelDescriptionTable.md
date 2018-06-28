<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Objects](#objects)
	- [Product](#product)
	  - [Product attributes and qualifiers](#product)
	- [ArticleGroup](#articlegroup)
		- [Number and Name of related Article Group](#articlegroup)
	- [Unit](#units)
		- [Measurement of the article](#Units)
	- [Currency](#currency)
		- [Currency of the product-prices](#currency)
	- [Country](#country)
	  - [Origin of the product](#country)
	- [Language](#language)
  	- [Multilanguage product descriptions](#language)
	- [Storages](#storages)
	  - [Locations for product storage](#storages)
	- [Charges](#charges)
	  - [Number, Stock entry date, experation date](#charges)
	- [Serialnumbers](#serialnumbers)
	  - [Number, Stock entry date, experation date](#serialnumbers)
	- [Pictures and Documents](#pictures and documents)
	  - [Product Pictures, QS-plans, Descriptions, Cataloge-Pages etc.](#pictures and documents)
	- [Dynamic atributes](#dynamic attributes)
	  - [User defined attributes](#dynamic attributes)
	- [Sets](#sets)
	  - [Set-list of a product](#sets)
	- [BOM](#bom)
	  - [BOM-list of a product](#bom)
	- [Choicers](#choicers)
	  - [Selection-lists for all kind of attributes that can be chosen out of a list or set of possible values - this lists can be extended by the user](#choicers)


<!-- /TOC -->

# Objects
## Product

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|articleNo|String|required|product or article no (can be changes while life cycle)|||
|matchcode|String||name of the product for fast and easy search  and find|||
|description|String||long description of the product|||
|extraDescription|String||more text space for description|||
|gtin|String||global trade item number, a worldwide unique number for the product, can be used for barcode and identification in foreign systems|||
|createdAt = idRecord = productCode|Number (timestamp)||when was the product record inserted into the table, **this is a mandatory unique identifier of the product that can not be changed while the whole lifetime of the entire product data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the product out of a user-dialog|||
|creator|Number||idRecord of the user that created the product|||
|modifier|Number||idRecord of the user that made the last update to the product|||
|costCalc|Number||calculated costs of one unit of the product, is set manually or by a custom algorithm|||
|costAvg|Number||average costs of one unit of the product, is calculated each time an amount of units of the product is entering or leaving the stock|||
|costLast|Number||last purchase price of one unit of the product|||
|costList|Number||list purchase price of one unit of the product |||
|costInventory|Number||cost for one unit of the product for inventory / stacktaking|||
|dtCostLast|String. Format = date-time||date of last purchse|||
|status|String|enum|||"new", "expiring", "blocked"|
|drawingNo|String||drawing number of the product|||
|version|String||version of the product|||
|dinStandard|String||DIN-standard number of the product (choicer)|||
|netWeight|Number||net weight of one unit of the product measured in kg|||
|grossWeight|Number||gross weight of one unit of the product measured in kg|||
|density|Number||specific gravity of the product|||
|length|Number||length of one unit of the product|||
|width|Number||width of one unit of the product|||
|strength|Number||strength of one unit of the product|||
|innerDiameter|Number||inner diameter of one unit of the product|||
|outerDiameter|Number||outer diameter of one unit of the product|||
|volume|Number||volume of one unit of the product|||
|customTariff|String||customs traiff number of the product|||
|replacementTime|Number||replacement time in days, how long does it take to get the product to stock|||
|active|Number||is the product active (1) or archived (2)|||
|taxInformation|Array||idAccount 0..4, 10..14, 0R - are pointing to tax-accounts for selling and purchasing|||
|isSale|Boolean||can this product be sold?|||
|isPurchase|Boolean||can this product be purchased?|||
|isProduction|Boolean||is the a product that has to be produced?|||
|isWorkStep|Boolean||has this product to be treated as a  work-step?|||
|isStockItem|Boolean||must all stock related in and out of this product be related to a storage location?|||
|isStockTracing|Boolean||shall all stock related in and out of this product be protocoled?|||
|isCheckStock|Boolean||may the product be stored to an inspection stock on receive and before delivery? (for quality management)|||
|isService|Boolean||has this product to be treated as a  service?|||
|isPacking|Boolean||has this product to be treated as a  packing?|||
|isConsumable|Boolean||has this product to be treated as a consumable?|||
|isDivisible|Boolean||is this a divisible product?|||
|isShipping|Boolean||has this product to be treated as a  shipping?|||
|isCharges|Boolean||is this product managed in, and related to charges|||
|isSerialNo|Boolean||is this product managed in, and related to serial numbers|||
|isRohsCompliant|Boolean||is this product compiant to the RoHS-policy 2011/65/EU of the European Union?|||
|isReverseCharge|Boolean||has this product to be treated as a reverse charge product (VAT has to be payed by the buyer)|||
|isDiscount|Boolean||is it allowed to give a discount when selling the product?|||
|isReduction|Boolean||is the price for the product reduced?|||
|isIntrastat|Boolean||is the selling and buying of this product relevant to the EU-policy 638/2004, named "intrastat"?|||
|isPreferential|Boolean||is the country of origin qualified for preference according to EU-policy 1207/2001, 1617/2006, 75/2008|||
|[articleGroup](#articlegroup)|Object||to which product- or article-group is the product related? (see below)|||
|[units](#units)|Array(Object)||measuring of the product (see below)|||
|[currency](#currency)|Object||currency of the product (see belwo)|||
|[country](#country)|Object||where has a product been produced (see below)|||
|[language](#language)|Array(Object)||multilanguage descriptions of the product (see below)|||
|[storages](#storages)|Array(Object)||where and how much is in the physical inventory of the stock of the product (see below)|||
|[charges](#isCharges)|Object||If the product stock-holding is managed in charges (isCharges=TRUE) then the related charges can be treated here|||
|[serial numbers](#serialnumbers)|Object||If the product stock-holding is managed in serial-numbers (isSerialNo=TRUE) then the related serial-numbers can be treated here|||
|[pictures and documents](#pictures and documents)|Object||Related pictures and documents to a product from out of the DMS|||
|[dynamic attributes](#dynamicattributes)|Array(Object)||user defined product attributes (see below)|||
|[sets](#sets)|Array(Object)||set-list of products related to a header-product (see below)|||
|[bom](#bom)|Array(Object)||bill of material-list of products related to a header-product (see below)|||
|[choicers](#choicers)|Array(Object)||Selection-lists for all kind of attributes that can be chosen out of a list or set of possible values - this lists can be extended by the user (see below)|||


## ArticleGroup

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|articleGroup|String|Required, enum|what kind of article-group is this?||"default","shop"|
|articleGroupCode|String||number for the article-group|||
|articleGroupDescription|String||description or name of the article-group||-|
|createdAt = idRecord|Number (timestamp)||when was the article-group record inserted into the table, **this is a mandatory unique identifier of the article-group that can not be changed while the whole lifetime of the entire article-group data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the article-group out of a user-dialog|||
|creator|Number||idRecord of the user that created the article-group|||
|modifier|Number||idRecord of the user that made the last update to the article-group|||


## Units

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|isPurchase|Boolean||Is this unit used in purchase-processes?|||
|isSale|Boolean||Is this unit used in sale-processes?|||
|isProduction|Boolean||Is this unit used in production-processes?|||
|description|String|Required|What is the name of the unit?|Pieces, meter, litres, seconds, bottles etc. (choicer)||
|abbreviation|String|Required|What is the short-name of the unit?|Pcs, m, l, sec, btl etc. (choicer)|-|
|createdAt = idRecord|Number (timestamp)||when was the unit record inserted into the table, **this is a mandatory unique identifier of the unit that can not be changed while the whole lifetime of the entire unit data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the unit out of a user-dialog|||
|creator|Number||idRecord of the user that created the unit|||
|modifier|Number||idRecord of the user that made the last update to the unit|||

## Currency

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|code|String|Required|abbreviation of the currency|Eur||
|description|String|Required|complete name of the currency|Euro||
|currencySymbol|String|Required|currency symbol|€||
|digits|Number|Required|how many digits are behind the comma of the currency|2||
|subCode|String|Required|abbreviation of the digit-part of the currency|Cnt||
|subDescription|String|Required|complete name of the digit-part of the currency|Cent||
|divisor|Number|Required|amount of subCode within one code|100 (100 Cnt = 1 €)||
|factor|Number|Required|conversion factor to calculate to the system currency (may change dayly)|1||
|base|Number|Required|Conversion base to calculate to the system currency|1||
|isSystemCurrency|Boolean||Is this the system currency?|||
|createdAt = idRecord|Number (timestamp)||when was the currency record inserted into the table, **this is a mandatory unique identifier of the currency that can not be changed while the whole lifetime of the entire currency data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the currency out of a user-dialog|||
|creator|Number||idRecord of the user that created the currency|||
|modifier|Number||idRecord of the user that made the last update to the currency|||


## Country

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|code|String|Required|idRecord of the country|||
|numberPlate|String||What is the international number-plate sign for the country?|D=Germany GB=Great Britain F=France DK=Danmark etc.||
|description|String||A short description of the country (national use)|Deutschland||
|areaCode|String||Local code that is used in the country for the country|D||
|isoCode|String||ISO-3166 standard number for the country|276||
|isoDescription|String||A short description of the country (international use)|DE||
|countryCodePhone|String||international phone prefix|+49||
|intrastatCode|String||Used in Europe for EU-trade tax control|DE||
|createdAt = idRecord|Number (timestamp)||when was the country record inserted into the table, **this is a mandatory unique identifier of the country that can not be changed while the whole lifetime of the entire country data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the country out of a user-dialog|||
|creator|Number||idRecord of the user that created the country|||
|modifier|Number||idRecord of the user that made the last update to the country|||
|[language](#Language)|Object||Official language of the country|Deutsch||
|[currency](#Currency)|Object||Official currency of the country|Euro|-|


## Language

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|description|String||Name of the language|Deutsch||
|abbreviation|String||Short name of the language|DE|-|
|createdAt = idRecord|Number (timestamp)||when was the language record inserted into the table, **this is a mandatory unique identifier of the language that can not be changed while the whole lifetime of the entire language data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the language out of a user-dialog|||
|creator|Number||idRecord of the user that created the language|||
|modifier|Number||idRecord of the user that made the last update to the language|||



## Storages

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|String|Required|Name of the storage|E.g. SKW040206|-|
|description1|String|Required|description of the storage||-|
|description2|String|Required|description of the storage||-|
|description3|String|Required|description of the storage||-|
|description4|String|Required|description of the storage||-|
|hall|String||Where is the storage?|Name of the building e.g. Hauptlager|-|
|corridor|String||Where is the storage?|Name of the floor e.g. Reihe 4|-|
|frame|String||Where is the storage?|Name of the rack e.g. Regal 2|-|
|group|Number||idRecord of a choicer record|storage group relation (choicer)|-|
|site|Number||idRecord of a choicer record|storage site relation (choicer)|-|
|address|Number||idRecord of an address|storage address relation (supplier or customer or...)|-|
|companyUnit|Number||idRecord of a companyUnit|storage company-unit relation|-|
|isStorageReceipt|Boolean||Is this a storage for incoming goods?|Wareneingangs-Lager||
|isStorageCheck|Boolean||Is this a storage for goods in quality check?|Prüflager||
|isStorageSalvage|Boolean||Is this a storage for blocked goods?|Sperrlager||
|isStorageCommission|Boolean||Is this a storage for commissions?|Kommissionslager||
|isStorageProducts|Boolean||Is this a storage for self produced goods?|Fertigwarenlager||
|isStorageDispatch|Boolean||Is this a storage for the dispatch of goods?|Versandlager||
|isStorageConsignment|Boolean||Is this a storage for consignment goods?|Konsignationslager||
|isStorageExternal|Boolean||Is this storage in an external warehouse?|Aussenlager||
|isSupermarket|Boolean||Is this a storage a supermarket for kanban storage?|Supermarktlager (Kanban)||
|isDisposable|Boolean||Is this a storage readily available?|Disponierbares Lager||
|createdAt = idRecord|Number (timestamp)||when was the storage record inserted into the table, **this is a mandatory unique identifier of the storage that can not be changed while the whole lifetime of the entire storage data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the storage out of a user-dialog|||
|creator|Number||idRecord of the user that created the storage|||
|modifier|Number||idRecord of the user that made the last update to the storage|||



## Charges

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|chargeNo|String|Required|Number / name of the charge||-|
|lotNo|String|Required|external charge no of the supplier||-|
|product|Number|Required|idRecord of the related product||-|
|flag|Number|Required|Origin of the charge|Manually added, purchased, inventory|-|
|dtIn|Date||Date when the charge was entered into the storage||-|
|dtProduction|Date||Date when the charge was produced||-|
|dtExpiration|Date||Date when the charge expires||-|
|qty|Number||Amount of the charge|||
|status|Number||Status of the charge|availiable, reserved, blocked etc.||
|createdAt = idRecord|Number (timestamp)||when was the charge record inserted into the table, **this is a mandatory unique identifier of the charge that can not be changed while the whole lifetime of the entire charge data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the charge out of a user-dialog|||
|creator|Number||idRecord of the user that created the charge|||
|modifier|Number||idRecord of the user that made the last update to the charge|||



## Serialnumbers

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|serialNo|String|Required|Number / name of the serial-no||-|
|lotNo|String|Required|external serial-no no of the supplier||-|
|product|Number|Required|idRecord of the related product||-|
|flag|Number|Required|Origin of the serial-no|Manually added, purchased, inventory|-|
|dtIn|Date||Date when the serial-no was entered into the storage||-|
|dtProduction|Date||Date when the serial-no was produced||-|
|dtExpiration|Date||Date when the serial-no expires||-|
|status|Number||Status of the serial-no|availiable, reserved, blocked etc.||
|createdAt = idRecord|Number (timestamp)||when was the serial-no record inserted into the table, **this is a mandatory unique identifier of the serial-no that can not be changed while the whole lifetime of the entire serial-no data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the serial-no out of a user-dialog|||
|creator|Number||idRecord of the user that created the serial-no|||
|modifier|Number||idRecord of the user that made the last update to the serial-no|||



## Pictures and Documents

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|product|Number|Required|idRecord of the related product||-|
|filename|String||file name||-|
|type|String||type of dms-entry|picture, document etc.|-|
|data|Blob|Required|file contend||-|
|createdAt = idRecord|Number (timestamp)||when was the dms-entry record inserted into the table, **this is a mandatory unique identifier of the dms-entry that can not be changed while the whole lifetime of the entire dms-entry data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the dms-entry out of a user-dialog|||
|creator|Number||idRecord of the user that created the dms-entry|||
|modifier|Number||idRecord of the user that made the last update to the dms-entry|||



## Dynamic attributes

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|description|String|Required|Name of the attribute||-|
|isRequired|Boolean||is this attribute mandatory?||-|
|dataType|Number||idRecord of a choicer record|choicer, record, text, float, int, date, time, bool|-|
|dataTypeParameter|String||additional parameters for the dataType||-|
|strValue|String||value of the attribute|contend depends on the dataType|-|
|numValue|Number||value of the attribute|contend depends on the dataType|-|
|fltValue|Float||value of the attribute|contend depends on the dataType|-|
|dtValue|Date||value of the attribute|contend depends on the dataType|-|
|tmValue|Time||value of the attribute|contend depends on the dataType|-|
|bvValue|Boolean||value of the attribute|contend depends on the dataType|-|
|createdAt = idRecord|Number (timestamp)||when was the dynamic-attribute record inserted into the table, **this is a mandatory unique identifier of the dynamic-attribute that can not be changed while the whole lifetime of the entire dynamic-attribute data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the dynamic-attribute out of a user-dialog|||
|creator|Number||idRecord of the user that created the dynamic-attribute|||
|modifier|Number||idRecord of the user that made the last update to the dynamic-attribute|||



## Sets

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|product|Number|Required|idRecord of the related header-product||-|
|version|String|Required|version number of the set-list||-|
|createdAt = idRecord|Number (timestamp)||when was the sets record inserted into the table, **this is a mandatory unique identifier of the sets that can not be changed while the whole lifetime of the entire sets data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the sets out of a user-dialog|||
|creator|Number||idRecord of the user that created the sets|||
|modifier|Number||idRecord of the user that made the last update to the sets|||


## Set-items

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|set|Number|Required|idRecord of the header set||-|
|product|Number|Required|idRecord of the related set-item-product||-|
|amount|Number||How many times is the product needed in the list||-|
|factor|Number||factor that multiplies the amount|1|-|
|createdAt = idRecord|Number (timestamp)||when was the set-item record inserted into the table, **this is a mandatory unique identifier of the set-item that can not be changed while the whole lifetime of the entire set-item data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the set-item out of a user-dialog|||
|creator|Number||idRecord of the user that created the set-item|||
|modifier|Number||idRecord of the user that made the last update to the set-item|||



## bom

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|product|Number|Required|idRecord of the related header-product||-|
|version|String|Required|version number of the bom-list||-|
|createdAt = idRecord|Number (timestamp)||when was the bom record inserted into the table, **this is a mandatory unique identifier of the bom that can not be changed while the whole lifetime of the entire bom data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the bom out of a user-dialog|||
|creator|Number||idRecord of the user that created the bom|||
|modifier|Number||idRecord of the user that made the last update to the bom|||


## bom-items

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|set|Number|Required|idRecord of the header bom||-|
|product|Number|Required|idRecord of the related bom-item-product||-|
|amount|Number||How many times is the product needed in the list||-|
|factor|Number||factor that multiplies the amount|1|-|
|createdAt = idRecord|Number (timestamp)||when was the bom-item record inserted into the table, **this is a mandatory unique identifier of the bom-item that can not be changed while the whole lifetime of the entire bom-item data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the bom-item out of a user-dialog|||
|creator|Number||idRecord of the user that created the bom-item|||
|modifier|Number||idRecord of the user that made the last update to the bom-item|||



## Choicers

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|description|String|Required|Name of the choicer-list||-|
|codeNo|Number||Number of the choicer-list||-|
|isManual|Boolean||Has the choicer-entry been added manually||-|
|isSystem|Boolean||Is this a system-choicer-entry (can not be changed or deleted by user)||-|
|choice|String|Required|selectable item from the list||-|
|sort|Number||Sort order of the choicer-list-entry||-|
|strVal|String||can be returned on selection||-|
|numVal|Number||can be returned on selection||-|
|bcVal|Boolean||can be returned on selection||-|
|createdAt = idRecord|Number (timestamp)||when was the choicer record inserted into the table, **this is a mandatory unique identifier of the choicer that can not be changed while the whole lifetime of the entire choicer data record**|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the choicer out of a user-dialog|||
|creator|Number||idRecord of the user that created the choicer|||
|modifier|Number||idRecord of the user that made the last update to the choicer|||
