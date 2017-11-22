# The integration process
This paper is intended to clarify the **virtual integration** process of the OIH framework. In contrast to a **materialized integration** (with a centralized data storage) the origin data will stay in the source database, but must by demand be transformed into the data formats of the integrated databases. An reasonable integration must ensures a fluent interoperability between the associated data models and therewith a seamless business process. Therefore an application response time should not be perceivable.

_There are cases to consider where an application (connector) is integrated to an existing environment, where the same objects (entities) potentially coexist inside multiple databases._

## The transformation
The OIH data formats need to be truly understood by any party who converts data onto this standard.

## The connector
A connector to the open integration hub can be stupid but also smart, which means that the simple version of a connector only requires a **syntactical mapping** (stupid connector) against the master data schema in order to become qualified. Whereas the next expansion stage also includes a manual **semantical mapping** (smart connector). The optional but smart connector should be written by someone who deeply understands the purpose of the underlying data model fields.

On the other hand, the provider of the master data schema must define the clear purpose of each field. Those have to reflect any required transformation case within a integration environment. An independent development of connectors could be granted by handing out typical data sets, which cover usual transformation cases - aka standard integration processes.

**A connector:**
* consists of an adaptor (+ transformer)
* creates, reads, updates and deletes (db) records if permitted


* holds a valid access / service token
* creates tenants and returns its tenantIDs
* modifies tenants customer data

> Where the semantic mapping can be done over?

## The mapping
For the **syntactical mapping** it is necessary that the logic of a connector at least transforms the origin data types and formats towards those of the master data schema. After that a the connector can be expanded by the **semantical mapping**, by initially connecting its transformed fields with the generic ones of the master data schema. A missed accordance on the contextual purpose of the origin fields, will counter the seamless business process workflow.

## The schema
The master data schema consists of data fields, that need to be transformed between data models within an integration environment. A generic data model is derivable out of those data fields and its structure reflects the contextual usage within repetitive business process. Business data flow patterns will help to design endpoints according to typical business processes.

_An address is unique, but can be used under certain circumstances in a variety of business contexts like mailing, shipping, accounting purposes and so on._

---

[Response time - below 100 ms](https://stackoverflow.com/questions/536300/what-is-the-shortest-perceivable-application-response-delay)
