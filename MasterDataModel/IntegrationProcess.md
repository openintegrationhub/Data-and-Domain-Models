# The integration process
This paper is intended to clarify the **virtual integration** process of the OIH framework. In contrast to a **materialized integration** (with a centralized data storage) the origin data will stay in the source database, but must by demand be transformed into the data formats of the integrated databases. A reasonable integration must ensures a fluent interoperability between the associated data models and therewith a seamless business process. Therefore an application response time should not be perceivable - due to delays.

![integration process diagram](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Sources/IntegrationProcess.svg)

_There are cases to consider where an application (connector) is integrated to an existing environment, where the same objects (entities) potentially coexist inside multiple databases._

> In which cases, it is necessary to identify unique entities (objects) and how can those be managed?

> What steps does a record go through, between an app database and the queue?

## The transformation
The OIH data formats need to be truly understood by any party who converts data onto this standard.

> Where should run the transformation logic?

## The connector
A connector to the open integration hub can be stupid but also smart, which means that the simple version of a connector only requires a **syntactical mapping** (stupid connector) against the master data schema in order to become qualified. Whereas the next expansion stage also includes a manual **semantical mapping** (smart connector). The optional but smart connector should be written by someone who deeply understands the purpose of the underlying data model fields.

On the other hand, the provider of the master data schema must define the clear purpose of each field. Those have to reflect any required transformation case within a integration environment. An independent development of connectors could be granted by handing out typical data sets, which cover usual transformation cases - aka standard integration processes.

> How does a domain specific connector recognize the need to update a record?

> What else needs to be translated by the adapter, besides the protocol and data format?

> How is an adaptor (+ transformer) connected to the master data schema?

**A connector:**
* consists of an adaptor (+ transformer)
* creates, reads, updates and deletes (db) records if permitted


* holds a valid access / service token
* creates tenants and returns its tenantIDs
* modifies tenants customer data

> What are the minimal functionalities of an adaptor?

## The mapping
For the **syntactical mapping** it is necessary that the logic of a connector at least transforms the origin data types and formats towards those of the master data schema. After that a the connector can be expanded by the **semantical mapping**, by initially connecting its transformed fields with the generic ones of the master data schema. A missed accordance on the contextual purpose of the origin fields, will counter the seamless business process workflow.

> How exactly the semantic mapping is implemented?

> How can the usage context of an entity type be mapped in the master data schema?

## The schema
The master data schema consists of that data fields, that need to be transformed between data models within an integration environment. A generic data model is derivable out of those data fields and its structure reflects the contextual usage within repetitive business process. Business data flow patterns will help to design endpoints according to typical business processes - interfaces (aka. views).

_An address is unique, but can be used under certain circumstances in a variety of business contexts like mailing, shipping, accounting purposes and so on._

> What criteria have to be considered for shaping entity types?

> What kind of attributes should be typified as enum, array or object in the master data schema?

> What steps could become necessary in order to replace/modify the master data schema?

---

[Response time - below 100 ms](https://stackoverflow.com/questions/536300/what-is-the-shortest-perceivable-application-response-delay)
