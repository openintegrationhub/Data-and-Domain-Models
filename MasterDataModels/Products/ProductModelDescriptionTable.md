<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Objects](#objects)
	- [Product](#product)
	- [ArticleGroup](#articlegroup)
	- [Units](#units)
	- [Country](#country)
	- [Language](#language)
	- [Currency](#currency)
	- [Storages](#storages)

<!-- /TOC -->

# Objects
## Product

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|articleNo|String|required|product or article no (can be changes while life cycle)|||
|matchcode|String||name of the product for fast and easy search  and find|||
|description|String||long description of the product|||
|gtin|String||global trade item number, a worldwide unique number for the product, can be used for barcode and identification in foreign systems|||
|costCalc|Number||calculated costs of one unit of the product, is set manually or by a custom algorithm|||
|costAvg|Number||average costs of one unit of the product, is calculated each time an amount of units of the product is entering or leaving the stock|||
|costLast|Number||last purchase price of one unit of the product|||
|costList|Number||list purchase price of one unit of the product |||
|costInventory|Number||cost for one unit of the product for inventory / stacktaking|||
|dtCostLast|String. Format = date-time||date of last purchse|||
|isSale|Boolean||can this product be sold?|||
|isPurchase|Boolean||can this product be purchased?|||
|isProduction|Boolean||is the a product that has to be produced?|||
|isWorkStep|Boolean||has this product to be treated as a  work-step?|||
|isStockItem|Boolean||must all stock related in and out of this product be related to a storage location?|||
|isStockTracing|Boolean||shall all stock related in and out of this product be protocoled?|||
|isCheckStock|Boolean||may the product be stored to an inspection stock on receive and before delivery? (for quality management)|||
|isService|Boolean||has this product to be treated as a  service?|||
|isPacking|String||has this product to be treated as a  packing?|||
|isConsumable|String||has this product to be treated as a consumable?|||
|isDivisible|Boolean||is this a divisible product?|||
|isShipping|Boolean||has this product to be treated as a  shipping?|||
|isCharges|Boolean||is this product managed in, and related to charges|||
|isSerialNo|Boolean||is this product managed in, and related to serial numbers|||
|status|String|enum|||"new", "expiring", "blocked"|
|drawingNo|String||drawing number of the product|||
|version|String||version of the product|||
|dinStandard|String||DIN-standard number of the product|||
|isRohsCompliant|Boolean||is this product compiant to the RoHS-policy 2011/65/EU of the European Union?|||
|netWeight|Number||net weight of one unit of the product measured in kg|||
|grossWeight|Number||gross weight of one unit of the product measured in kg|||
|density|Number||specific gravity of the product|||
|length|Number||length of one unit of the product|||
|width|Number||width of one unit of the product|||
|strength|Number||strength of one unit of the product|||
|innerDiameter|Number||inner diameter of one unit of the product|||
|outerDiameter|Number||outer diameter of one unit of the product|||
|volume|Number||volume of one unit of the product|||
|isReverseCharge|Boolean||has this product to be treated as a reverse charge product (VAT has to be payed by the buyer)|||
|isDiscount|Boolean||is it allowed to give a discount when selling the product?|||
|isReduction|Boolean||is the price for the product reduced?|||
|isIntrastat|Boolean||is the selling and buying of this product relevant to the EU-policy 638/2004, named "intrastat"?|||
|isPreferential|Boolean||is the country of origin qualified for preference according to EU-policy 1207/2001, 1617/2006, 75/2008|||
|customTariff|String||customs traiff number of the product|||
|replacementTime|Number||replacement time in days, how long does it take to get the product to stock|||
|productCode|Number (timestamp)||internal unique identification number of the product that can not be changed in the whole life cycle|||
|active|Number||is the product active (1) or archived (2)|||
|extraDescription|Number||more text space for description|||
|taxInformation|Array||idAccount 0..4, 10..14, 0R - are pointing to tax-accounts for selling and purchasing|||
|createdAt|Number (timestamp)||when was the product record inserted into the table|||
|updatedAt|Number (timestamp)||when was the last update that has been made to the product out of a user-dialog|||
|creator|Number||idRecord of the user that created the product|||
|modifier|Number||idRecord of the user that made the last update to the product|||
|[pictures and documents](#pictures and documents)|Object||Related pictures and documents to a product from out of the DMS|||
|[charges](#isCharges)|Object||If the product stock-holding is managed in charges (isCharges=TRUE) then the related charges can be treated here|||
|[serialNumbers](#serialnumbers)|Object||If the product stock-holding is managed in serial-numbers (isSerialNo=TRUE) then the related serial-numbers can be treated here|||
|[countryOrigin](#country)|Object||where has a product been produced (see below)|||
|[units](#unit)|Array(Object)||measuring of the product (see below)|||
|[storages](#storages)|Array(Object)||where and how much is in the physical inventory of the stock of the product (see below)|||
|[articleGroup](#articlegroup)|Object||to which product- or article-group is the product related? (see below)|||


## ArticleGroup

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|articleGroup|String|Required, enum|what kind of article-group is this?||"default","shop"|
|articleGroupCode|String||number for the article-group|||
|articleGroupDescription|String||description or name of the article-group||-|

_Note:_ articleGroup = type, articleGroupDescription = description

## Units

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|isSale|Boolean||Is this unit used in sale-processes?|||
|isPurchase|Boolean||Is this unit used in purchase-processes?|||
|isProduction|Boolean||Is this unit used in production-processes?|||
|description|String|Required|What is the name of the unit?|Pieces, meter, litres, seconds, bottles etc||
|abbreviation|String|Required|What is the short-name of the unit?|Pcs, m, l, sec, btl etc|-|

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
|[language](#Language)|Object||Official language of the country|Deutsch||
|[currency](#Currency)|Object||Official currency of the country|Euro|-|

## Language

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|code|String|Required|idrecord of the language|||
|description|String||Name of the language|Deutsch||
|abbreviation|String||Short name of the language|DE|-|


## Currency

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|code|String|Required|idRecord of the currency|||
|description|String|Required|Name of the currency|Euro||
|currency|String|Required|Short name for the currency|Eur||
|decimalDigits|Number||How many digits does the currency have behind the decimal point?|2||
|subCode|String||Short form of how are the digits behind the decimal point called?|Cnt||
|subDescription|String||How are the digits behind the decimal point called?|Cent||
|currencySymbol|String||Sign name for the currency|€|-|

## Storages

|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|code|String|Required|idRecord of the storage|||
|description|String|Required|Name of the storage|E.g. SKW040206|-|
|area|String||Where is the storage?|Branch or location e.g. Seligenstadt|-|
|complex|String||Where is the storage?|Name of the complex e.g. Klein-Welzheim|-|
|hall|String||Where is the storage?|Name of the building e.g. Hauptlager|-|
|corridor|String||Where is the storage?|Name of the floor e.g. Reihe 4|-|
|shelf|String||Where is the storage?|Name of the rack e.g. Regal 2|-|
|bay|String||Where is the storage?|Name of the rack bay e.g. Fach 6|-|
|height|Number||Storage height of the bay||-|
|width|Number||Storage width of the bay||-|
