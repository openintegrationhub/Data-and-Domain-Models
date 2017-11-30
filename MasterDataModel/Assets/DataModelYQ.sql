Unsere Adressdaten bestehen im wesentlichen aus einer Grundtabelle "address"
In SilvERP gibt es Adressdatensätze, die spezifische Erweiterungen erhalten haben.
Diese Erweiterten Adressen sind:
	Lieferanten
	Kunden
	Mitarbeiter

Die Tabellen sind so zu verstehen, dass JEDER Adresse eine Zeile in der Tabelle "address" hat. Zudem hat ein Kunde eine Zeile in der Tabelle "customer", ein Lieferant eine Zeile in der Tabelle "supplier" und ein Mitarbeiter eine Zeile in der Tabelle "employee".
In diesen erweiterten Zeilen ist jeweils ein Feld "idAddress" enthalten, das auf die grundadresse verweist.
Durch diese Struktur kann ein und die gleiche Adresse auch gleichzeitig Kunde und Lieferant sein, indem es schlicht beide Erweiterungen gibt.

Felder, deren Name mit "id" beginnt sind 1:1 verbundene Auswahlfelder. Diese Tabellen sind aufgrund der Namensgebung in der Regel selbsterklärend und in dieser Date deswegen nicht noch einmal explizit abgebildet.

Weiterhin gibt es die Tabelle "connectoraddress", durch die man Adressen beliebigen anderen Adressen zuordnen kann.
Diese Zuordnungen können die Qualität "Ansprechpartner", "Rechnungsadresse" oder "Lieferadresse" haben.
Hierbei werden jeweils Zeilen der Tabelle address miteinander verknüpft.

Die Tabellenstrukturen lauten:

CREATE TABLE address (
                                                                     -- reserved
  idRecord                  BIGINT        NOT NULL,                  -- <u>
  recordState               INT           NOT NULL DEFAULT '0',      -- <i>
  idAddressCreate           BIGINT        NOT NULL DEFAULT '0',      -- < > currentUser[id]
  addressLevel              BIGINT        NOT NULL DEFAULT '0',      -- < >
  recordFlags               BIGINT        NOT NULL DEFAULT '0',      -- < >
  tsUpdate                  BIGINT        NOT NULL DEFAULT '0',      -- < >
  idAddressUpdate           BIGINT        NOT NULL DEFAULT '0',      -- < >
  tsVirtualDel              BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idAddressVirtualDel       BIGINT        NOT NULL DEFAULT '0',      -- < >
  revision                  BIGINT        NOT NULL DEFAULT '0',      -- < >
  archiveFlag               INT           NOT NULL DEFAULT '0',      -- <i>
  poolFlag                  INT           NOT NULL DEFAULT '0',      -- < >
                                                                     -- extensions
  idEmployee                BIGINT        NOT NULL DEFAULT '0',      -- <i>
                                                                     -- extensions
  idCompanyUnitDefault      BIGINT        NOT NULL DEFAULT '0',      -- <i>
                                                                     -- addressdata
  addressSource             CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  matchcode                 CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  idChoicerTitle            BIGINT        NOT NULL DEFAULT '0',      -- < >
  idChoicerSalutation       BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idChoicerAcademicTitle    BIGINT        NOT NULL DEFAULT '0',      -- < >
  name1                     CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  name2                     CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  name3                     CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  name4                     CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  idChoicerGender           BIGINT        NOT NULL DEFAULT '0',      -- < >
  dtBirthday                DATE,                                    -- < >
  appendix1                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  appendix2                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  appendix3                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  appendix4                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  street                    CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  city                      CHAR    ( 40) NOT NULL DEFAULT '',       -- <i>
  zipCode                   CHAR    ( 40) NOT NULL DEFAULT '',       -- <i>
  zipCodeDirect             CHAR    ( 40) NOT NULL DEFAULT '',       -- <i>
  zipCodePostbox            CHAR    ( 40) NOT NULL DEFAULT '',       -- <i>
  postbox                   CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  idChoicerRegion           BIGINT        NOT NULL DEFAULT '0',      -- <i>  contains intrastat regioncode
  country                   CHAR    ( 20) NOT NULL DEFAULT '',       -- <i>
  countryIso                CHAR    ( 20) NOT NULL DEFAULT '',       -- <i>
  idCountry                 BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idLanguage                BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idChoicerTour				BIGINT        NOT NULL DEFAULT '0',               -- <i>
                                                                     -- job
  idChoicerJobTitle         BIGINT        NOT NULL DEFAULT '0',      -- < >
  department                CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
                                                                     -- geodata
  geoPosition               POINT,                                   -- <i>
  geoLongitude              DOUBLE        NOT NULL DEFAULT '0',      -- <i>
  geoLatitude               DOUBLE        NOT NULL DEFAULT '0',      -- <i>
  geoHeight                 DOUBLE        NOT NULL DEFAULT '0',      -- <i>
  distanceToBase            DOUBLE        NOT NULL DEFAULT '0',      -- <i>
                                                                     -- tax
  taxNo                     CHAR    ( 40) NOT NULL DEFAULT '',       -- < >  Steuer-Nr.
  vatNo                     CHAR    ( 40) NOT NULL DEFAULT '',       -- < >  USt-Id-Nr.
  bvFactoring				TINYINT (  1) NOT NULL DEFAULT '0',                 -- < >  wird factoring zum Abrechnung
  bvAddressPickUp			TINYINT (  1) NOT NULL DEFAULT '0',              -- < >  ist es eine abholadresse
                                                                     -- communication
  phone1                    CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  phone2                    CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  phone3                    CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  phone4                    CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  mobile1                   CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  mobile2                   CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  mobile3                   CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  mobile4                   CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  fax1                      CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  fax2                      CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  fax3                      CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  fax4                      CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  email1                    CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  email2                    CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  email3                    CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  email4                    CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  website1                  CHAR    (250) NOT NULL DEFAULT '',       -- < >
  website2                  CHAR    (250) NOT NULL DEFAULT '',       -- < >
  website3                  CHAR    (250) NOT NULL DEFAULT '',       -- < >
  website4                  CHAR    (250) NOT NULL DEFAULT '',       -- < >

                                                                     -- bank
  idBankAccount1            BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idBankAccount2            BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idBankAccount3            BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idBankAccount4            BIGINT        NOT NULL DEFAULT '0',      -- <i>
                                                                     -- accountdata
  userName                  CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  userPassword              CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  userPin                   CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  userPasswordHint          CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
                                                                     -- phonetic
  ptmatchcode               CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  ptName1                   CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  ptName2                   CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  ptName3                   CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  ptName4                   CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  ptAppendix1               CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  ptAppendix2               CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  ptAppendix3               CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  ptAppendix4               CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  ptStreet                  CHAR    ( 80) NOT NULL DEFAULT '',       -- <i>
  ptCity                    CHAR    ( 40) NOT NULL DEFAULT '',       -- <i>
  bvExportCertificate		TINYINT (  1) NOT NULL DEFAULT '0',
                                                                     -- shop
  bvShopAccess 				TINYINT (  1) NOT NULL DEFAULT '0',
                                                                     -- versandhinweise
  bvSelfCollector           TINYINT (  1) NOT NULL DEFAULT '0',      -- Selbstabholer
  bvCarLifter               TINYINT (  1) NOT NULL DEFAULT '0',      -- Hebebühne
  dispatchHint1             CHAR    (250) NOT NULL DEFAULT '',       -- Versandhinweis1
  dispatchHint2             CHAR    (250) NOT NULL DEFAULT '',       -- Versandhinweis2
  dispatchHint3             CHAR    (250) NOT NULL DEFAULT '',       -- Versandhinweis3
  dispatchHint4             CHAR    (250) NOT NULL DEFAULT '',       -- Versandhinweis4
  tmFrom                    TIME          NOT NULL DEFAULT '00:00:00',
  tmUntil                   TIME          NOT NULL DEFAULT '00:00:00'

  ,PRIMARY KEY (idRecord)
)

CREATE TABLE customer (
                                                                     -- reserved
  idRecord                   BIGINT        NOT NULL,                 -- <u>
  recordState                INT           NOT NULL DEFAULT '0',     -- <i>
  idAddressCreate            BIGINT        NOT NULL DEFAULT '0',     -- < >
  addressLevel               BIGINT        NOT NULL DEFAULT '0',     -- < >
  recordFlags                BIGINT        NOT NULL DEFAULT '0',     -- < >
  tsUpdate                   BIGINT        NOT NULL DEFAULT '0',     -- < >
  idAddressUpdate            BIGINT        NOT NULL DEFAULT '0',     -- < >
  tsVirtualDel               BIGINT        NOT NULL DEFAULT '0',     -- <i>
  idAddressVirtualDel        BIGINT        NOT NULL DEFAULT '0',     -- < >
  revision                   BIGINT        NOT NULL DEFAULT '0',     -- < >
  archiveFlag                INT           NOT NULL DEFAULT '0',     -- <i>
  poolFlag                   INT           NOT NULL DEFAULT '0',     -- < >
                                                                     -- backreference
  idAddress                  BIGINT        NOT NULL DEFAULT '0',     -- <i>
                                                                     -- general informations
  bvCustomer				         TINYINT (  1) NOT NULL DEFAULT '0',         -- <i> ist Kunde, sonst nur Interessent
  idChoicerType              BIGINT        NOT NULL DEFAULT '0',     -- <i>  Art
  idChoicerBranch            BIGINT        NOT NULL DEFAULT '0',     -- <i>
  customerNo                 CHAR    ( 20) NOT NULL DEFAULT '',      -- <i>
  bvCustomerNoManual         TINYINT (  1) NOT NULL DEFAULT '0',     -- <i> Wurde die Kundennummer manuell vergeben
  debitorNo                  CHAR    ( 20) NOT NULL DEFAULT '',      -- <i>
  bvDebitorNoManual          TINYINT (  1) NOT NULL DEFAULT '0',     -- <i> Wurde die Nummer manuell vergeben
  supplierNo                 CHAR    ( 20) NOT NULL DEFAULT '',      -- < > eigene Lieferantennummer beim Kunden
  discount                   DOUBLE        NOT NULL DEFAULT '0',     -- < > Kundenrabatt
  creditLimit                DOUBLE        NOT NULL DEFAULT '0',     -- < > Kreditlimit
  dtCreditRating             DATE,                                   -- < > Datum der letzten Bonitätsprüfung
  creditRating               CHAR    ( 80) NOT NULL DEFAULT '',      -- < > Bonität z. B. AAA oder 2,3
  bvCreditInsurance          TINYINT (  1) NOT NULL DEFAULT '0',     -- < > Forderungsausfallversicherung
  additionalLimit            DOUBLE        NOT NULL DEFAULT '0',     -- < > zusätzliches, nicht versicherters Limit
  bvDunning          		 TINYINT (  1) NOT NULL DEFAULT '0',          -- < > Kunde darf gemahnt werden
  consuptionTaxNo			 CHAR    ( 40) NOT NULL DEFAULT '',              -- < > Verbrauchs-Steuernummer
  idAssistant                BIGINT        NOT NULL DEFAULT '0',     -- <i> id des Sachbearbeiters
  idAgent                    BIGINT        NOT NULL DEFAULT '0',     -- < > ID des Vertreters
  idPriceTerm                BIGINT        NOT NULL DEFAULT '0',     -- < > id from Konditionsgeber
  idPaymentTerm              BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Zahlungsbedinung
  idDeliveryTerm             BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Lieferbedinung
  idAddressInvoice           BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Rechnungsadresse
  idAddressDelivery          BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Lieferadresse
  additionalDeliveryTerm     CHAR    ( 80) NOT NULL DEFAULT '',      -- < > Zusatz zur Lieferbedingung
  idChoicerPackaging         BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Verpackungsart - Choicer 512001
  idDispatchMode             BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Versandart
  idPriceGroup               BIGINT        NOT NULL DEFAULT '0',     -- < >
  aaIdx                      INT           NOT NULL DEFAULT '0',     -- < > fibu kenner
  idCurrency                 BIGINT        NOT NULL DEFAULT '0',     -- < >
  idChoicerPaymentMethod     BIGINT        NOT NULL DEFAULT '0',     -- < > Standard-Zahlungsmethode
  idBankAccountPayment       BIGINT        NOT NULL DEFAULT '0',     -- < >
  idEdi                      BIGINT        NOT NULL DEFAULT '0',     -- < >
  idTimeFrameDelivery        BIGINT        NOT NULL DEFAULT '0',     -- < >
  idPaymentTypeShop          BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Zahlungsart im Shop
  idDispatchModeShop         BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Versandart im Shop
  idAddressInvoiceShop       BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Rechnungsadresse im Shop
  idAddressDeliveryShop      BIGINT        NOT NULL DEFAULT '0',     -- < > ID der Lieferadresse im Shop

  bvArticleCost1             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  idArticleCost1             BIGINT        NOT NULL DEFAULT '0',     -- < >
  articleCostThreshold1      DOUBLE        NOT NULL DEFAULT '0',     -- < >
  articleCost1               DOUBLE        NOT NULL DEFAULT '0',     -- < >

  bvArticleCost2             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  idArticleCost2             BIGINT        NOT NULL DEFAULT '0',     -- < >
  articleCostThreshold2      DOUBLE        NOT NULL DEFAULT '0',     -- < >
  articleCost2               DOUBLE        NOT NULL DEFAULT '0',     -- < >

  bvArticleCost3             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  idArticleCost3             BIGINT        NOT NULL DEFAULT '0',     -- < >
  articleCostThreshold3      DOUBLE        NOT NULL DEFAULT '0',     -- < >
  articleCost3               DOUBLE        NOT NULL DEFAULT '0',     -- < >

  bvArticleCost4             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  idArticleCost4             BIGINT        NOT NULL DEFAULT '0',     -- < >
  articleCostThreshold4      DOUBLE        NOT NULL DEFAULT '0',     -- < >
  articleCost4               DOUBLE        NOT NULL DEFAULT '0',     -- < >

  bvArticleCost5             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  idArticleCost5             BIGINT        NOT NULL DEFAULT '0',     -- < >
  articleCostThreshold5      DOUBLE        NOT NULL DEFAULT '0',     -- < >
  articleCost5               DOUBLE        NOT NULL DEFAULT '0',     -- < >

  bvArticleCost6             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  idArticleCost6             BIGINT        NOT NULL DEFAULT '0',     -- < >
  articleCostThreshold6      DOUBLE        NOT NULL DEFAULT '0',     -- < >
  articleCost6               DOUBLE        NOT NULL DEFAULT '0',     -- < >

  bvArticleCost7             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  idArticleCost7             BIGINT        NOT NULL DEFAULT '0',     -- < >
  articleCostThreshold7      DOUBLE        NOT NULL DEFAULT '0',     -- < >
  articleCost7               DOUBLE        NOT NULL DEFAULT '0',     -- < >

  bvArticleCost8             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  idArticleCost8             BIGINT        NOT NULL DEFAULT '0',     -- < >
  articleCostThreshold8      DOUBLE        NOT NULL DEFAULT '0',     -- < >
  articleCost8               DOUBLE        NOT NULL DEFAULT '0',     -- < >

  idChoicerArea              BIGINT        NOT NULL DEFAULT '0',     -- <i>
  bvBonus                    TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  unitBillingIdx             INT           NOT NULL DEFAULT '0',     -- < >
  idChoicerFormation         BIGINT        NOT NULL DEFAULT '0',     -- < >
  idAdressFormation          BIGINT        NOT NULL DEFAULT '0',     -- < > Verband
  idCustomerPriceCondition   BIGINT        NOT NULL DEFAULT '0',     -- < >
  idChoicerOrigin            BIGINT        NOT NULL DEFAULT '0',     -- < >
  idChoicerStatus            BIGINT        NOT NULL DEFAULT '0',     -- < >
  ccCustomerFree1            CHAR    ( 80) NOT NULL DEFAULT '',      -- < >
  ccCustomerFree2            CHAR    ( 80) NOT NULL DEFAULT '',      -- < >
  ccCustomerFree3            CHAR    ( 80) NOT NULL DEFAULT '',      -- < >
  ccCustomerFree4            CHAR    ( 80) NOT NULL DEFAULT '',      -- < >
  freeNote1                  CHAR    ( 80) NOT NULL DEFAULT '',      -- < >
  freeNote2                  CHAR    ( 80) NOT NULL DEFAULT '',      -- < >
  freeNote3                  CHAR    ( 80) NOT NULL DEFAULT '',      -- < >
  freeNote4                  CHAR    ( 80) NOT NULL DEFAULT '',      -- < >
  idAddressCarrier           BIGINT        NOT NULL DEFAULT '0',     -- < >
  idAddressSupplier          BIGINT        NOT NULL DEFAULT '0',     -- < >
  bvDeliveryStop             TINYINT (  1) NOT NULL DEFAULT '0',     -- < >
  documentFooterText         CHAR    ( 80) NOT NULL DEFAULT '',      -- < >


                                                                     -- ranking for normal business = invoices and credit notes
                                                                     --
                                                                     -- values (turnover and amount): actual year, last 12 months and last 4 years, percent of deviation
                                                                     --
  rankingMin0                      INT           NOT NULL DEFAULT '0',-- <i> Ranking im aktuellen Jahr
  rankingMin1                      INT           NOT NULL DEFAULT '0',-- <i> Ranking im letzten Jahr
  rankingMin2                      INT           NOT NULL DEFAULT '0',-- <i> Ranking im vorletzten Jahr
  rankingMin3                      INT           NOT NULL DEFAULT '0',-- <i> etc.
  rankingMin4                      INT           NOT NULL DEFAULT '0',-- <i>

  rankingTurnoverTotal             DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz gesamt
  rankingQuantityTotal             DOUBLE        NOT NULL DEFAULT '0',-- < > Menge gesamt

  rankingTurnover12Months          DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz letzte 12 Monate
  rankingQuantity12Months          DOUBLE        NOT NULL DEFAULT '0',-- < > Menge letzte 12 Monate

  rankingTurnoverMin0              DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz aktuelles Jahr
  rankingTurnoverPer0              DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Umsatz zum Vorjahr im Prozent
  rankingQuantityMin0              DOUBLE        NOT NULL DEFAULT '0',-- < > Menge aktuelles Jahr
  rankingQuantityPer0              DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Menge zum Vorjahr im Prozent

  rankingTurnoverMin1Compare       DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz Vergleichszeitraum im letzten Jahr zum aktuellen Jahr
  rankingQuantityMin1Compare       DOUBLE        NOT NULL DEFAULT '0',-- < > Menge Vergleichszeitraum im letzten Jahr zum aktuellen Jahr

  rankingTurnoverMin1              DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz letztes Jahr
  rankingTurnoverPer1              DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Umsatz zum vorletzten Jahr im Prozent
  rankingQuantityMin1              DOUBLE        NOT NULL DEFAULT '0',-- < > Menge letztes Jahr
  rankingQuantityPer1              DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Menge zum vorletzten Jahr im Prozent

  rankingTurnoverMin2              DOUBLE        NOT NULL DEFAULT '0',-- < > etc.
  rankingTurnoverPer2              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingQuantityMin2              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingQuantityPer2              DOUBLE        NOT NULL DEFAULT '0',-- < >

  rankingTurnoverMin3              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingTurnoverPer3              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingQuantityMin3              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingQuantityPer3              DOUBLE        NOT NULL DEFAULT '0',-- < >

  rankingTurnoverMin4              DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz vor 4 Jahren
  rankingQuantityMin4              DOUBLE        NOT NULL DEFAULT '0',-- < > Menge vor 4 Jahren


                                                                     -- ranking for agency business = saleOrders with documentMode = 1011040
                                                                     --
                                                                     -- values (turnover and amount): actual year, last 12 months and last 4 years, percent of deviation
                                                                     --
  rankingAgencyMin0                INT           NOT NULL DEFAULT '0',-- <i> Ranking Agenturgeschäft im aktuellen Jahr
  rankingAgencyMin1                INT           NOT NULL DEFAULT '0',-- <i> Ranking Agenturgeschäft im letzten Jahr
  rankingAgencyMin2                INT           NOT NULL DEFAULT '0',-- <i> Ranking Agenturgeschäft im vorletzten Jahr
  rankingAgencyMin3                INT           NOT NULL DEFAULT '0',-- <i> etc.
  rankingAgencyMin4                INT           NOT NULL DEFAULT '0',-- <i>

  rankingAgencyTurnoverTotal       DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz gesamt
  rankingAgencyQuantityTotal       DOUBLE        NOT NULL DEFAULT '0',-- < > Menge gesamt

  rankingAgencyTurnover12Months    DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz letzte 12 Monate
  rankingAgencyQuantity12Months    DOUBLE        NOT NULL DEFAULT '0',-- < > Menge letzte 12 Monate

  rankingAgencyTurnoverMin0        DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz aktuelles Jahr
  rankingAgencyTurnoverPer0        DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Umsatz zum Vorjahr im Prozent
  rankingAgencyQuantityMin0        DOUBLE        NOT NULL DEFAULT '0',-- < > Menge aktuelles Jahr
  rankingAgencyQuantityPer0        DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Menge zum Vorjahr im Prozent

  rankingAgencyTurnoverMin1Compare DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz Vergleichszeitraum im letzten Jahr zum aktuellen Jahr
  rankingAgencyQuantityMin1Compare DOUBLE        NOT NULL DEFAULT '0',-- < > Menge Vergleichszeitraum im letzten Jahr zum aktuellen Jahr

  rankingAgencyTurnoverMin1        DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz letztes Jahr
  rankingAgencyTurnoverPer1        DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Umsatz zum vorletzten Jahr im Prozent
  rankingAgencyQuantityMin1        DOUBLE        NOT NULL DEFAULT '0',-- < > Menge letztes Jahr
  rankingAgencyQuantityPer1        DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Menge zum vorletzten Jahr im Prozent

  rankingAgencyTurnoverMin2        DOUBLE        NOT NULL DEFAULT '0',-- < > etc.
  rankingAgencyTurnoverPer2        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyQuantityMin2        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyQuantityPer2        DOUBLE        NOT NULL DEFAULT '0',-- < >

  rankingAgencyTurnoverMin3        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyTurnoverPer3        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyQuantityMin3        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyQuantityPer3        DOUBLE        NOT NULL DEFAULT '0',-- < >

  rankingAgencyTurnoverMin4        DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz vor 4 Jahren
  rankingAgencyQuantityMin4        DOUBLE        NOT NULL DEFAULT '0',-- < > Menge vor 4 Jahren


                                                                     -- ranking for all normal and agency business
  rankingTotalMin0                 INT           NOT NULL DEFAULT '0',-- <i> Ranking gesamt im aktuellen Jahr
  rankingTotalMin1                 INT           NOT NULL DEFAULT '0',-- <i> Ranking gesamt im letzten Jahr
  rankingTotalMin2                 INT           NOT NULL DEFAULT '0',-- <i> Ranking gesamt im vorletzten Jahr
  rankingTotalMin3                 INT           NOT NULL DEFAULT '0',-- <i> etc.
  rankingTotalMin4                 INT           NOT NULL DEFAULT '0'-- <i>


  ,PRIMARY KEY (idRecord)
)

CREATE TABLE supplier (
                                                                     -- reserved
  idRecord                         BIGINT        NOT NULL,           -- <u>
  recordState                      INT           NOT NULL DEFAULT '0',-- <i>
  idAddressCreate                  BIGINT        NOT NULL DEFAULT '0',-- < >
  addressLevel                     BIGINT        NOT NULL DEFAULT '0',-- < >
  recordFlags                      BIGINT        NOT NULL DEFAULT '0',-- < >
  tsUpdate                         BIGINT        NOT NULL DEFAULT '0',-- < >
  idAddressUpdate                  BIGINT        NOT NULL DEFAULT '0',-- < >
  tsVirtualDel                     BIGINT        NOT NULL DEFAULT '0',-- <i>
  idAddressVirtualDel              BIGINT        NOT NULL DEFAULT '0',-- < >
  revision                         BIGINT        NOT NULL DEFAULT '0',-- < >
  archiveFlag                      INT           NOT NULL DEFAULT '0',-- <i>
  poolFlag                         INT           NOT NULL DEFAULT '0',-- < >
                                                                     -- backreference
  idAddress                        BIGINT        NOT NULL DEFAULT '0',-- <i>
                                                                     -- general informations
  idChoicerType                    BIGINT        NOT NULL DEFAULT '0',-- <i>
  idChoicerBranch                  BIGINT        NOT NULL DEFAULT '0',-- <i>
  supplierNo                       CHAR    ( 20) NOT NULL DEFAULT '',-- <i> Lieferantennummer
  bvSupplierNoManual               TINYINT (  1) NOT NULL DEFAULT '0',-- <i> Wurde die Lieferantennummer manuell vergeben
  creditorNo                       CHAR    ( 20) NOT NULL DEFAULT '',-- <i>
  bvCreditorNoManual               TINYINT (  1) NOT NULL DEFAULT '0',-- <i> Wurde die Nummer manuell vergeben
  bvDirectDelivery                 TINYINT (  1) NOT NULL DEFAULT '0',-- < > macht der Lieferant Direktlieferungen
  bvCarrier					               TINYINT (  1) NOT NULL DEFAULT '0',   -- <i> lieferant ist spediteur
  bvSupplierDeclaration            TINYINT (  1) NOT NULL DEFAULT '0',-- < > Lieferanten-Erklärung
  dtDeclarationValid               DATE,                             -- < > Lieferanten-Erklärung gültig bis
  bvNoSupplierDeclaration          TINYINT (  1) NOT NULL DEFAULT '0',-- < > Lieferanten-dibt keine erklärung ab
  dtNoSupplierDeclaration          DATE,                             -- < > keine lieferantenerklärung eingetragen am
  bvForecastCalculation            CHAR    ( 20) NOT NULL DEFAULT '',-- < > Forecast
  supplierCustomerNo               CHAR    ( 20) NOT NULL DEFAULT '',-- <i> eigene Kundennummer beim Lieferanten

  orderValue                       DOUBLE        NOT NULL DEFAULT '0',-- < > Mindestbestellwert
  discount                         DOUBLE        NOT NULL DEFAULT '0',-- < > Rabatt
  creditLimit                      DOUBLE        NOT NULL DEFAULT '0',-- < >
  agencyProvision                  DOUBLE        NOT NULL DEFAULT '0',-- < > Provisionssatz bei Agenturgeschäft
  idPaymentTerm                    BIGINT        NOT NULL DEFAULT '0',-- < >
  idDeliveryTerm                   BIGINT        NOT NULL DEFAULT '0',-- < >
  additionalDeliveryTerm           CHAR    ( 80) NOT NULL DEFAULT '',-- < > Zusatz zur Lieferbedingung
  aaIdx                            INT           NOT NULL DEFAULT '0',-- < > fibu kenner
  idCurrency                       BIGINT        NOT NULL DEFAULT '0',-- < >
  idChoicerPaymentMethod           BIGINT        NOT NULL DEFAULT '0',-- < > Standard-Zahlungsmethode
  idBankAccountPayment             BIGINT        NOT NULL DEFAULT '0',-- < >
  idEdi                            BIGINT        NOT NULL DEFAULT '0',-- < >
  idTimeFrameDelivery              BIGINT        NOT NULL DEFAULT '0',-- < >
  idChoicerPackaging               BIGINT        NOT NULL DEFAULT '0',-- < > ID der Verpackungsart - Choicer 512001
  idDispatchMode                   BIGINT        NOT NULL DEFAULT '0',-- < > ID der Versandart

  ccArea                           CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  bvBonus                          TINYINT (  1) NOT NULL DEFAULT '0',-- < >
  unitBillingIdx                   INT           NOT NULL DEFAULT '0',-- < >
  idChoicerStatus                  BIGINT        NOT NULL DEFAULT '0',-- < >
  ccSupplierFree1                  CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  ccSupplierFree2                  CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  ccSupplierFree3                  CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  ccSupplierFree4                  CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  freeNote1                        CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  freeNote2                        CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  freeNote3                        CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  freeNote4                        CHAR    ( 80) NOT NULL DEFAULT '',-- < >
  idAddressCarrier                 BIGINT        NOT NULL DEFAULT '0',-- < >
  idAddressSupplier                BIGINT        NOT NULL DEFAULT '0',-- < >
  bvDeliveryStop                   TINYINT (  1) NOT NULL DEFAULT '0',-- < >
  documentFooterText               CHAR    ( 80) NOT NULL DEFAULT '',-- < >

                                                                     -- ranking for normal business = purchase invoices and purchase credit notes
                                                                     --
                                                                     -- values (turnover and amount): actual year, last 12 months and last 4 years, percent of deviation
                                                                     --
  rankingMin0                      INT           NOT NULL DEFAULT '0',-- <i> Ranking im aktuellen Jahr
  rankingMin1                      INT           NOT NULL DEFAULT '0',-- <i> Ranking im letzten Jahr
  rankingMin2                      INT           NOT NULL DEFAULT '0',-- <i> Ranking im vorletzten Jahr
  rankingMin3                      INT           NOT NULL DEFAULT '0',-- <i> etc.
  rankingMin4                      INT           NOT NULL DEFAULT '0',-- <i>

  rankingTurnoverTotal             DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz gesamt
  rankingQuantityTotal             DOUBLE        NOT NULL DEFAULT '0',-- < > Menge gesamt

  rankingTurnover12Months          DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz letzte 12 Monate
  rankingQuantity12Months          DOUBLE        NOT NULL DEFAULT '0',-- < > Menge letzte 12 Monate

  rankingTurnoverMin0              DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz aktuelles Jahr
  rankingTurnoverPer0              DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Umsatz zum Vorjahr im Prozent
  rankingQuantityMin0              DOUBLE        NOT NULL DEFAULT '0',-- < > Menge aktuelles Jahr
  rankingQuantityPer0              DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Menge zum Vorjahr im Prozent

  rankingTurnoverMin1Compare       DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz Vergleichszeitraum im letzten Jahr zum aktuellen Jahr
  rankingQuantityMin1Compare       DOUBLE        NOT NULL DEFAULT '0',-- < > Menge Vergleichszeitraum im letzten Jahr zum aktuellen Jahr

  rankingTurnoverMin1              DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz letztes Jahr
  rankingTurnoverPer1              DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Umsatz zum vorletzten Jahr im Prozent
  rankingQuantityMin1              DOUBLE        NOT NULL DEFAULT '0',-- < > Menge letztes Jahr
  rankingQuantityPer1              DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Menge zum vorletzten Jahr im Prozent

  rankingTurnoverMin2              DOUBLE        NOT NULL DEFAULT '0',-- < > etc.
  rankingTurnoverPer2              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingQuantityMin2              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingQuantityPer2              DOUBLE        NOT NULL DEFAULT '0',-- < >

  rankingTurnoverMin3              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingTurnoverPer3              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingQuantityMin3              DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingQuantityPer3              DOUBLE        NOT NULL DEFAULT '0',-- < >

  rankingTurnoverMin4              DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz vor 4 Jahren
  rankingQuantityMin4              DOUBLE        NOT NULL DEFAULT '0',-- < > Menge vor 4 Jahren

                                                                     -- ranking for agency business = saleOrders with documentMode = 1011040
                                                                     --
                                                                     -- values (turnover and amount): actual year, last 12 months and last 4 years, percent of deviation
                                                                     --
  rankingAgencyMin0                INT           NOT NULL DEFAULT '0',-- <i> Ranking Agenturgeschäft im aktuellen Jahr
  rankingAgencyMin1                INT           NOT NULL DEFAULT '0',-- <i> Ranking Agenturgeschäft im letzten Jahr
  rankingAgencyMin2                INT           NOT NULL DEFAULT '0',-- <i> Ranking Agenturgeschäft im vorletzten Jahr
  rankingAgencyMin3                INT           NOT NULL DEFAULT '0',-- <i> etc.
  rankingAgencyMin4                INT           NOT NULL DEFAULT '0',-- <i>

  rankingAgencyTurnoverTotal       DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz gesamt
  rankingAgencyQuantityTotal       DOUBLE        NOT NULL DEFAULT '0',-- < > Menge gesamt

  rankingAgencyTurnover12Months    DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz letzte 12 Monate
  rankingAgencyQuantity12Months    DOUBLE        NOT NULL DEFAULT '0',-- < > Menge letzte 12 Monate

  rankingAgencyTurnoverMin0        DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz aktuelles Jahr
  rankingAgencyTurnoverPer0        DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Umsatz zum Vorjahr im Prozent
  rankingAgencyQuantityMin0        DOUBLE        NOT NULL DEFAULT '0',-- < > Menge aktuelles Jahr
  rankingAgencyQuantityPer0        DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Menge zum Vorjahr im Prozent

  rankingAgencyTurnoverMin1Compare DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz Vergleichszeitraum im letzten Jahr zum aktuellen Jahr
  rankingAgencyQuantityMin1Compare DOUBLE        NOT NULL DEFAULT '0',-- < > Menge Vergleichszeitraum im letzten Jahr zum aktuellen Jahr

  rankingAgencyTurnoverMin1        DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz letztes Jahr
  rankingAgencyTurnoverPer1        DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Umsatz zum vorletzten Jahr im Prozent
  rankingAgencyQuantityMin1        DOUBLE        NOT NULL DEFAULT '0',-- < > Menge letztes Jahr
  rankingAgencyQuantityPer1        DOUBLE        NOT NULL DEFAULT '0',-- < > Abweichung Menge zum vorletzten Jahr im Prozent

  rankingAgencyTurnoverMin2        DOUBLE        NOT NULL DEFAULT '0',-- < > etc.
  rankingAgencyTurnoverPer2        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyQuantityMin2        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyQuantityPer2        DOUBLE        NOT NULL DEFAULT '0',-- < >

  rankingAgencyTurnoverMin3        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyTurnoverPer3        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyQuantityMin3        DOUBLE        NOT NULL DEFAULT '0',-- < >
  rankingAgencyQuantityPer3        DOUBLE        NOT NULL DEFAULT '0',-- < >

  rankingAgencyTurnoverMin4        DOUBLE        NOT NULL DEFAULT '0',-- < > Umsatz vor 4 Jahren
  rankingAgencyQuantityMin4        DOUBLE        NOT NULL DEFAULT '0',-- < > Menge vor 4 Jahren

                                                                     -- ranking for all normal and agency business
  rankingTotalMin0                 INT           NOT NULL DEFAULT '0',-- <i> Ranking gesamt im aktuellen Jahr
  rankingTotalMin1                 INT           NOT NULL DEFAULT '0',-- <i> Ranking gesamt im letzten Jahr
  rankingTotalMin2                 INT           NOT NULL DEFAULT '0',-- <i> Ranking gesamt im vorletzten Jahr
  rankingTotalMin3                 INT           NOT NULL DEFAULT '0',-- <i> etc.
  rankingTotalMin4                 INT           NOT NULL DEFAULT '0'-- <i>

  ,PRIMARY KEY (idRecord)
)

 CREATE TABLE employee (
                                                                     -- reserved
  idRecord                  BIGINT        NOT NULL,                  -- <u>
  recordState               INT           NOT NULL DEFAULT '0',      -- <i>
  idAddressCreate           BIGINT        NOT NULL DEFAULT '0',      -- < >
  addressLevel              BIGINT        NOT NULL DEFAULT '0',      -- < >
  recordFlags               BIGINT        NOT NULL DEFAULT '0',      -- < >
  tsUpdate                  BIGINT        NOT NULL DEFAULT '0',      -- < >
  idAddressUpdate           BIGINT        NOT NULL DEFAULT '0',      -- < >
  tsVirtualDel              BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idAddressVirtualDel       BIGINT        NOT NULL DEFAULT '0',      -- < >
  revision                  BIGINT        NOT NULL DEFAULT '0',      -- < >
  archiveFlag               INT           NOT NULL DEFAULT '0',      -- <i>
  poolFlag                  INT           NOT NULL DEFAULT '0',      -- < >
                                                                     -- backreference
  idAddress                 BIGINT        NOT NULL DEFAULT '0',      -- <i>
                                                                     -- general informations
  birthName                 CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  personnelNo               CHAR    ( 40) NOT NULL DEFAULT '',       -- <i>
  bvPersonnelNoManual       TINYINT (  1) NOT NULL DEFAULT '0',      -- <i> Wurde die Personalnummer manuell vergeben
  dtJobBeginning            DATE,                                    -- < >
  dtJobEnding               DATE,                                    -- < >
  freeNote1                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  freeNote2                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  freeNote3                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  freeNote4                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
                                                                     -- role
  idChoicerDepartment       BIGINT        NOT NULL DEFAULT '0',      -- <i> Abteilung
  idChoicerFunction         BIGINT        NOT NULL DEFAULT '0',      -- <i> Funktion, z.B. Abteilungsleiter, Einkäufer
  bvUser                    TINYINT (  1) NOT NULL DEFAULT '0',      -- <i>
  bvAssistant               TINYINT (  1) NOT NULL DEFAULT '0',      -- <i>
  bvAgent                   TINYINT (  1) NOT NULL DEFAULT '0',      -- <i>
  bvProduction              TINYINT (  1) NOT NULL DEFAULT '0',      -- <i>
  bvSelfDc              	TINYINT (  1) NOT NULL DEFAULT '0',         -- < > nur eigene BDE-Erfassung, nur wirksam, falls bvProduction gesetzt
  bvLaborTime           	TINYINT (  1) NOT NULL DEFAULT '0',         -- <i> Personalzeiterfassung
                                                                     -- costs
  chargeRate                DOUBLE        NOT NULL DEFAULT '0',      -- < >
  chargeRateInternal        DOUBLE        NOT NULL DEFAULT '0',      -- < >
  chargeRateExternal        DOUBLE        NOT NULL DEFAULT '0',      -- < >
                                                                     -- mail
  mailHost                  CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  mailUser                  CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  mailPassword              CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  mailEncryption            INT           NOT NULL DEFAULT '0',      -- < >  0 = Keine , 1 = STARTTLS, 2 = SSL/TLS
  mailAuthMethod            INT           NOT NULL DEFAULT '0',      -- < >  0 = Password, normal
  mailFrom                  CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  mailFromName              CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  bvMailSmtp                TINYINT (  1) NOT NULL DEFAULT '0',      -- < >
  bvMailSmtpAuth            TINYINT (  1) NOT NULL DEFAULT '0',      -- < >
  bvMailIsHtml              TINYINT (  1) NOT NULL DEFAULT '0',      -- < >
  mailClient                CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  mailCharset               CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  idResourceScheduleGroup 	BIGINT        NOT NULL DEFAULT '0',       -- < >
  bvTargetTimeActual       	TINYINT (  1) NOT NULL DEFAULT '0',      -- < > 	Sollzeit = Istzeit, z.b. bei Aushilfen
  dtLastBalance  			DATE,                                            -- <i>	Datum letzte Abrechnung
  secondsTarget				BIGINT        NOT NULL DEFAULT '0',               -- < >	Sollzeit in sekunden pro Woche
  secondsTargetMonth		BIGINT        NOT NULL DEFAULT '0',            -- < >	Sollzeit in sekunden pro Monat
  minutesRoundUp			INT           NOT NULL DEFAULT '0',               -- < >	aufrunden auf nächste Minuten bei Anmeldung
  minutesRoundDown			INT           NOT NULL DEFAULT '0',             -- < >	abrunden auf vorherige Minuten bei Abmeldung
  secondsLastBalance		BIGINT        NOT NULL DEFAULT '0',            -- < > 	Zeitvortrag bei letzter Abrechnung in Sekunden
  secondsActual				BIGINT        NOT NULL DEFAULT '0',               -- < >	aktueller Zeitvortrag in Sekunden seit letzter abrechnung
  secondsThresholdIncluded	BIGINT        NOT NULL DEFAULT '0',       -- < >	Zeit in Sekunden, die im Arbeitsvertrag enthalten sind und nicht als Überstunden in den nächsten Monat mitgenommen werden
  type 						INT           NOT NULL DEFAULT '0',                     -- <i>	1 angestellter, 2 = freier mitarbeiter (sollzeit = istzeit)
  vacationStandard			DOUBLE        NOT NULL DEFAULT '0',             -- < >	Urlaubsanspruch
  vacationHandicapped		DOUBLE        NOT NULL DEFAULT '0',           -- < >	Behindertenurlaub
  vacationRest				DOUBLE        NOT NULL DEFAULT '0',                -- < >	Resturlaub Vorjahr
  vacationDeclared			DOUBLE        NOT NULL DEFAULT '0',             -- < >	angemeldeter Urlaub
  vacationUsed				DOUBLE        NOT NULL DEFAULT '0',                -- < >	genommener Urlaub
  tmTargetMonday			TIME          NOT NULL DEFAULT '00:00:00',        -- < >	Sollzeit Montag
  tmTargetTuesday			TIME          NOT NULL DEFAULT '00:00:00',       -- < >	Sollzeit Dienstag
  tmTargetWednesday			TIME          NOT NULL DEFAULT '00:00:00',     -- < >	Sollzeit Mittwoch
  tmTargetThursday			TIME          NOT NULL DEFAULT '00:00:00',      -- < >	Sollzeit Donnerstag
  tmTargetFriday			TIME          NOT NULL DEFAULT '00:00:00',        -- < >	Sollzeit Freitag
  tmTargetSaturday			TIME          NOT NULL DEFAULT '00:00:00',      -- < >	Sollzeit Samstag
  tmTargetSunday			TIME          NOT NULL DEFAULT '00:00:00',        -- < >	Sollzeit Sonntag
  tmBreakMonday				TIME          NOT NULL DEFAULT '00:00:00',        -- < >	Pause Montag
  tmBreakTuesday			TIME          NOT NULL DEFAULT '00:00:00',        -- < >	Pause Dienstag
  tmBreakWednesday			TIME          NOT NULL DEFAULT '00:00:00',      -- < >	Pause Mittwoch
  tmBreakThursday			TIME          NOT NULL DEFAULT '00:00:00',       -- < >	Pause Donnerstag
  tmBreakFriday				TIME          NOT NULL DEFAULT '00:00:00',        -- < >	Pause Freitag
  tmBreakSaturday			TIME          NOT NULL DEFAULT '00:00:00',       -- < >	Pause Samstag
  tmBreakSunday				TIME          NOT NULL DEFAULT '00:00:00'         -- < >	Pause Sonntag

  ,PRIMARY KEY (idRecord)
)

CREATE TABLE connectoraddress (
                                                                     -- reserved
  idRecord                  BIGINT        NOT NULL,                  -- <u>
  recordState               INT           NOT NULL DEFAULT '0',      -- <i>
  idAddressCreate           BIGINT        NOT NULL DEFAULT '0',      -- < >
  addressLevel              BIGINT        NOT NULL DEFAULT '0',      -- < >
  recordFlags               BIGINT        NOT NULL DEFAULT '0',      -- < >
  tsUpdate                  BIGINT        NOT NULL DEFAULT '0',      -- < >
  idAddressUpdate           BIGINT        NOT NULL DEFAULT '0',      -- < >
  tsVirtualDel              BIGINT        NOT NULL DEFAULT '0',      -- <i>
  idAddressVirtualDel       BIGINT        NOT NULL DEFAULT '0',      -- < >
  revision                  BIGINT        NOT NULL DEFAULT '0',      -- < >
  archiveFlag               INT           NOT NULL DEFAULT '0',      -- <i>
  poolFlag                  INT           NOT NULL DEFAULT '0',      -- < >
                                                                     -- general informations
  idAddressSource           BIGINT        NOT NULL DEFAULT '0',      -- <i> idRecord des Kunden oder Lieferanten
  idAddressTarget           BIGINT        NOT NULL DEFAULT '0',      -- <i>
  isAgent                   TINYINT (  1) NOT NULL DEFAULT '0',      -- < >
  isBillingAddress          TINYINT (  1) NOT NULL DEFAULT '0',      -- < >
  isDeliveryAddress         TINYINT (  1) NOT NULL DEFAULT '0',      -- < >
  isLocation         		TINYINT (  1) NOT NULL DEFAULT '0',           -- < > Standort
  ccAddressType             CHAR    ( 40) NOT NULL DEFAULT '',       -- < >
  idEmployee                BIGINT        NOT NULL DEFAULT '0',      -- <i> Betreuer
  idChoicerFunction         BIGINT        NOT NULL DEFAULT '0',      -- <i> Funktion, z.B. Abteilungsleiter, Einkäufer
  idChoicerDepartment       BIGINT        NOT NULL DEFAULT '0',      -- <i> Abteilung
  debitorNo                 CHAR    ( 20) NOT NULL DEFAULT '',       -- <i>
  bvDebitorNoManual         TINYINT (  1) NOT NULL DEFAULT '0',      -- <i> Wurde die Nummer manuell vergeben
  creditorNo                CHAR    ( 20) NOT NULL DEFAULT '',       -- <i>
  bvCreditorNoManual        TINYINT (  1) NOT NULL DEFAULT '0',      -- <i> Wurde die Nummer manuell vergeben
  agentPriority             INT           NOT NULL DEFAULT '0',      -- < >
  billingPriority           INT           NOT NULL DEFAULT '0',      -- < >
  deliveryPriority          INT           NOT NULL DEFAULT '0',      -- < >
  aaIdx                     INT           NOT NULL DEFAULT '0',      -- < > fibu kenner
  idCurrency                BIGINT        NOT NULL DEFAULT '0',      -- < >
  creditLimit               DOUBLE        NOT NULL DEFAULT '0',      -- < >
  bvDeliveryStop            TINYINT (  1) NOT NULL DEFAULT '0',      -- < >
  freeNote1                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  freeNote2                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  freeNote3                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  freeNote4                 CHAR    ( 80) NOT NULL DEFAULT '',       -- < >
  idConnectorAddressInvoice BIGINT        NOT NULL DEFAULT '0',      -- < >
  bvDefaultAddress          TINYINT (  1) NOT NULL DEFAULT '0'       -- <i>

  ,PRIMARY KEY (idRecord)
)
