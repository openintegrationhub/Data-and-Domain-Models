# Product Model Description

Dscription table which includes the following information for each object:

- Type
- Properties
- Short description
- Example values
- Enumeration options (if attribute is an enumeration)

**Table of Contents:**
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Product Model Description](#product-model-description)
	- [Objects](#objects)
		- [Product](#product)
		- [ArticleGroup](#articlegroup)
		- [Unit](#unit)
		- [Currency](#currency)
		- [Country](#country)
		- [Language](#language)
		- [Storage](#storage)
		- [Charge](#charge)
		- [SerialNumber](#serialnumber)
		- [PictureAndDocument](#pictureanddocument)
		- [Dynamic attributes](#dynamic-attributes)
		- [Set](#set)
		- [SetItem](#setitem)
		- [Bom](#bom)
		- [BomItem](#bomitem)
		- [Choicer](#choicer)
  
<!-- /TOC -->

## Objects

### Product

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|articleNo|String|required|Product or article no (can be changes while life cycle)|-|-|
|matchCode|String|-|Name of the product for fast and easy search  and find|-|-|
|description|String|-|Long description of the product|-|-|
|extraDescription|String|-|More text space for description|-|-|
|gtin|String|-|Global trade item number, a worldwide unique number for the product, can be used for barcode and identification in foreign systems|-|-|
|costCalc|Number|-|Calculated costs of one unit of the product, is set manually or by a custom algorithm|-|-|
|costAvg|Number|-|Average costs of one unit of the product, is calculated each time an amount of units of the product is entering or leaving the stock|-|-|
|costLast|Number|-|Last purchase price of one unit of the product|-|-|
|costList|Number|-|List purchase price of one unit of the product |-|-|
|costInventory|Number|-|Cost for one unit of the product for inventory / stacktaking|-|-|
|dtCostLast|String. Format = date-time|-|Date of last purchse|-|-|
|status|String|enum|Status of the product|new|"new", "expiring", "blocked"|
|drawingNo|String|-|Drawing number of the product|-|-|
|version|String|-|Version of the product|-|-|
|dinStandard|String|-|DIN-standard number of the product (choicer)|-|-|
|netWeight|Number|-|Net weight of one unit of the product measured in kg|-|-|
|grossWeight|Number|-|Gross weight of one unit of the product measured in kg|-|-|
|density|Number|-|Specific gravity of the product|-|-|
|length|Number|-|Length of one unit of the product|-|-|
|width|Number|-|Width of one unit of the product|-|-|
|strength|Number|-|Strength of one unit of the product|-|-|
|innerDiameter|Number|-|Inner diameter of one unit of the product|-|-|
|outerDiameter|Number|-|Outer diameter of one unit of the product|-|-|
|volume|Number|-|Volume of one unit of the product|-|-|
|customTariff|String|-|Customs traiff number of the product|-|-|
|replacementTime|Number|-|Replacement time in days, how long does it take to get the product to stock|-|-|
|active|Number|-|Is the product active (1) or archived (2)|-|-|
|taxInformation|Array|-|IdAccount 0..4, 10..14, 0R - are pointing to tax-accounts for selling and purchasing|-|-|
|isSale|Boolean|-|Can this product be sold?|-|-|
|isPurchase|Boolean|-|Can this product be purchased?|-|-|
|isProduction|Boolean|-|Is the a product that has to be produced?|-|-|
|isWorkStep|Boolean|-|Has this product to be treated as a  work-step?|-|-|
|isStockItem|Boolean|-|Must all stock related in and out of this product be related to a storage location?|-|-|
|isStockTracing|Boolean|-|Shall all stock related in and out of this product be protocoled?|-|-|
|isCheckStock|Boolean|-|May the product be stored to an inspection stock on receive and before delivery? (for quality management)|-|-|
|isService|Boolean|-|Has this product to be treated as a service?|-|-|
|isPacking|Boolean|-|Has this product to be treated as a packing?|-|-|
|isConsumable|Boolean|-|Has this product to be treated as a consumable?|-|-|
|isDivisible|Boolean|-|Is this a divisible product?|-|-|
|isShipping|Boolean|-|Has this product to be treated as a shipping?|-|-|
|isCharges|Boolean|-|Is this product managed in, and related to charges|-|-|
|isSerialNo|Boolean|-|Is this product managed in, and related to serial numbers|-|-|
|isRohsCompliant|Boolean|-|Is this product compiant to the RoHS-policy 2011/65/EU of the European Union?|-|-|
|isReverseCharge|Boolean|-|Has this product to be treated as a reverse charge product (VAT has to be payed by the buyer)|-|-|
|isDiscount|Boolean|-|Is it allowed to give a discount when selling the product?|-|-|
|isReduction|Boolean|-|Is the price for the product reduced?|-|-|
|isIntrastat|Boolean|-|Is the selling and buying of this product relevant to the EU-policy 638/2004, named "intrastat"?|-|-|
|isPreferential|Boolean|-|Is the country of origin qualified for preference according to EU-policy 1207/2001, 1617/2006, 75/2008|-|-|
|[articleGroups](#articlegroup)|Object|-|To which product- or article-group is the product related?|article group objec array|-|
|[units](#unit)|Array(Object)|-|Measuring of the product|unit object array|-|
|[country](#country)|Object|-|Where has a product been produced|country object|-|
|[storages](#storage)|Array(Object)|-|Where and how much is in the physical inventory of the stock of the product|storage object array|-|
|[charges](#charge)|Object|-|If the product stock-holding is managed in charges (isCharges=TRUE) then the related charges can be treated here|charge object array|-|
|[serial numbers](#serialnumber)|Object|-|If the product stock-holding is managed in serial-numbers (isSerialNo=TRUE) then the related serial-numbers can be treated here|serial number object array|-|
|[pictures and documents](#picture-and-document)|Object|-|Related pictures and documents to a product from out of the DMS|picture and document object array|-|
|[dynamic attributes](#dynamicattribute)|Array(Object)|-|User defined product attributes|dynamic attribute object array|-|
|[sets](#set)|Array(Object)|-|Set-list of products related to a header-product|set object array|-|
|[boms](#bom)|Array(Object)|-|Bill of material-list of products related to a header-product|bom object array|-|
|[choicers](#choicer)|Array(Object)|-|Selection-lists for all kind of attributes that can be chosen out of a list or set of possible values - this lists can be extended by the user|choicer object array|-|

### ArticleGroup

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|type|String|Required, enum|What kind of article-group is this?||"default","shop"|
|code|String|-|Number for the article-group|-|-|
|description|String|-|Description or name of the article-group|-|-|

### Unit

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|isPurchase|Boolean|-|Is this unit used in purchase-processes?|-|-|
|isSale|Boolean|-|Is this unit used in sale-processes?|-|-|
|isProduction|Boolean|-|Is this unit used in production-processes?|-|-|
|description|String|Required|What is the name of the unit?|Pieces, meter, litres, seconds, bottles etc. (choicer)|-|
|abbreviation|String|-|What is the short-name of the unit?|Pcs, m, l, sec, btl etc. (choicer)|-|

### Currency

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|code|String|-|Abbreviation of the currency|Eur|-|
|description|String|Required|Complete name of the currency|Euro|-|
|currencySymbol|String|-|Currency symbol|€|-|
|decimalDigits|Number|-|How many digits are behind the comma of the currency|2|-|
|subCode|String|-|Abbreviation of the digit-part of the currency|Cnt|-|
|subDescription|String|-|Complete name of the digit-part of the currency|Cent|-|
|divisor|Number|-|Amount of subCode within one code|100 (100 Cnt = 1 €)|-|
|factor|Number|-|Conversion factor to calculate to the system currency (may change dayly)|1|-|
|base|Number|-|Conversion base to calculate to the system currency|1|-|
|isSystemCurrency|Boolean|-|Is this the system currency?|-|-|

### Country

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|code|String|Required|IdRecord of the country|DE|-|
|numberPlate|String|-|What is the international number-plate sign for the country?|D=Germany GB=Great Britain F=France DK=Danmark etc.|-|
|description|String|-|A short description of the country (national use)|Germany|-|
|areaCode|String|-|Local code that is used in the country for the country|D|-|
|isoCode|String|-|ISO-3166 standard number for the country|276|-|
|isoDescription|String|-|A short description of the country (international use)|DE|-|
|countryCodePhone|String|-|International phone prefix|+49|-|
|intrastatCode|String|-|Used in Europe for EU-trade tax control|DE||
|[language](#Language)|Object|-|Official language of the country|German|-|
|[currency](#Currency)|Object|-|Official currency of the country|Euro|-|

### Language

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|code|String|-|Language Code following IETF language tags|en-US|-|
|description|String|-|Name of the language|Deutsch|-|
|abbreviation|String|-|Short name of the language|DE|-|

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

### Storage

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|String|Required|Name of the storage|E.g. SKW040206|-|
|description1|String|-|Description of the storage|-|-|
|description2|String|-|Description of the storage|-|-|
|description3|String|-|Description of the storage|-|-|
|description4|String|-|Description of the storage|-|-|
|hall|String|-|In which hall is the storage?|Name of the building e.g. Hauptlager|-|
|corridor|String|-|In which corridor is the storage?|Name of the floor e.g. Reihe 4|-|
|area|String|-|In which area is the storage?|Name of the area|-|
|complex|String|-|In which complex is the storage?|Name of the complex|-|
|height|String|-|Height of the storage|-|-|
|frame|String|-|In which frame is the storage?|Name of the rack e.g. Regal 2|-|
|group|Number|-|IdRecord of a choicer record|storage group relation (choicer)|-|
|site|Number|-|IdRecord of a choicer record|storage site relation (choicer)|-|
|address|Number|-|IdRecord of an address|storage address relation (supplier or customer or...)|-|
|companyUnit|Number|-|IdRecord of a companyUnit|storage company-unit relation|-|
|isStorageReceipt|Boolean|-|Is this a storage for incoming goods?|Wareneingangs-Lager|-|
|isStorageCheck|Boolean|-|Is this a storage for goods in quality check?|Prüflager|-|
|isStorageSalvage|Boolean|-|Is this a storage for blocked goods?|Sperrlager|-|
|isStorageCommission|Boolean|-|Is this a storage for commissions?|Kommissionslager|-|
|isStorageProducts|Boolean|-|Is this a storage for self produced goods?|Fertigwarenlager|-|
|isStorageDispatch|Boolean|-|Is this a storage for the dispatch of goods?|Versandlager|-|
|isStorageConsignment|Boolean|-|Is this a storage for consignment goods?|Konsignationslager|-|
|isStorageExternal|Boolean|-|Is this storage in an external warehouse?|Aussenlager|-|
|isSupermarket|Boolean|-|Is this a storage a supermarket for kanban storage?|Supermarktlager (Kanban)|-|
|isDisposable|Boolean|-|Is this a storage readily available?|Disponierbares Lager|-|

### Charge

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|chargeNo|String|Required|Number / name of the charge||-|
|lotNo|String|Required|External charge no of the supplier||-|
|flag|Number|-|Origin of the charge|Manually added, purchased, inventory|-|
|dtIn|Date|-|Date when the charge was entered into the storage||-|
|dtProduction|Date|-|Date when the charge was produced||-|
|dtExpiration|Date|-|Date when the charge expires||-|
|qty|Number|-|Amount of the charge|-|-|
|status|Number|-|Status of the charge|availiable, reserved, blocked etc.|-|
|[storage](#storage)|Object|-|Where and how much is in the physical inventory of the stock of the charge|storage object|-|

### SerialNumber

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|serialNo|String|Required|Number / name of the serial-no|-|-|
|lotNo|String|Required|External serial-no no of the supplier|-|-|
|flag|Number|-|Origin of the serial-no|Manually added, purchased, inventory|-|
|dtIn|Date||Date when the serial-no was entered into the storage|-|-|
|dtProduction|Date|-|Date when the serial-no was produced|-|-|
|dtExpiration|Date|-|Date when the serial-no expires|-|-|
|status|Number|-|Status of the serial-no|availiable, reserved, blocked etc.|-|
|[storage](#storage)|Object|-|Where and how much is in the physical inventory of the stock of the seial number|storage object|-|

### PictureAndDocument

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|fileName|String|-|File name||-|
|type|String|-|Type of dms-entry|picture, document etc.|-|
|data|Blob|Required|File content|-|-|

### Dynamic attributes

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|String|Required|Name of the attribute|-|-|
|fileContent|Boolean|-|Is this attribute mandatory?|-|-|
|dataType|Number|-|IdRecord of a choicer record|choicer, record, text, float, int, date, time, bool|-|
|dataTypeParameter|String|-|Additional parameters for the dataType|-|-|
|strValue|String|-|Value of the attribute|content depends on the dataType|-|
|numValue|Number|-|Value of the attribute|content depends on the dataType|-|
|fltValue|Number of type: Float|-|Value of the attribute|content depends on the dataType|-|
|dtValue|Date|-|value of the attribute|Content depends on the dataType|-|
|tmValue|Time|-|value of the attribute|Content depends on the dataType|-|
|bvValue|Boolean|-|value of the attribute|Content depends on the dataType|-|

### Set

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|string|Required|Name of the set|-|-|
|version|String|Required|Version number of the set-list|-|-|
|[setItems](#setitem)|Object Array (of type SetItem)|-|Set list items|SetItem object|-|

### SetItem

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|amount|Number|-|How many times is the product needed in the list|-|-|
|factor|Number|-|Factor that multiplies the amount|1|-|

### Bom

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|string|Required|Name of the set|-|-|
|version|String|Required|Version number of the bom-list|-|-|
|[bomItems](#bomItem)|Object Array (of type BomItem)|-|Bom list items|BomItem object|-|

### BomItem

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|amount|Number|-|How many times is the product needed in the list|-|-|
|factor|Number|-|Factor that multiplies the amount|1|-|

### Choicer

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|description|String|Required|Name of the choicer-list|-|-|
|codeNo|Number|-|Number of the choicer-list|-|-|
|isManual|Boolean|-|Has the choicer-entry been added manually|-|-|
|isSystem|Boolean|-|Is this a system-choicer-entry (can not be changed or deleted by user)|-|-|
|choice|String|Required|Selectable item from the list|-|-|
|sort|Number|-|Sort order of the choicer-list-entry|-|-|
|strVal|String|-|Can be returned on selection|-|-|
|numVal|Number|-|Can be returned on selection|-|-|
|bcVal|Boolean|-|Can be returned on selection|-|-|
