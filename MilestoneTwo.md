# Goals of the 2nd milestone - scope 2018

> Open Integration Hub platform version 0.5 - focused on data domain addresses & products

> Document procedure model for Integration Cloud Provider

---

## Adapter(s)
> technically standardizes requested data

```
Sync via custom mapping - per integration
```

### Provision a CRUD Interface (API) - permissions of access-level
  - [ ] Bidirectional interface for Snazzy
  - [ ] Bidirectional interface for SilverERP
  - [ ] Bidirectional interface for Wice
  - [ ] **Permitted** interface access permissions - read/write vs. read only
  - [ ] **Permitted** user access permissions - to consider

### Develop a data IO component
  - [ ] Adapter of Snazzy
  * Functionality trigger/action
  * Inputs/Outputs
  * Config. settings - authentication info
  - [ ] Adapter of SilverERP
  * Functionality trigger/action
  * Inputs/Outputs
  * Config. settings - authentication info
  - [ ] Adapter of Wice
  * Functionality trigger/action
  * Inputs/Outputs
  * Config. settings - authentication info

### Challenge custom integration flows
  - [ ] Custom integration flow mapping from Snazzy model towards SilverERP model
  - [ ] Custom integration flow mapping from SilverERP model towards Snazzy model
  - [ ] **Permitted** technical transformations (derived specs)
  - [ ] **Valid** JSON schema for products
  - [ ] **Valid** JSON schema for addresses
  - [ ] **Stable** custom integration data flows

---

## Transformer
> normalizes technically standardized data towards OIH data scheme(s) - format

```
Sync via standard scheme mapping - per runtime
```
### Unified REST API - Smart Data Framework
  - [ ] Addresses API
  - [ ] Addresses API documentation
  * Error/Status codes
  * Permissions
  * Description - semantic scope
  - [ ] Products API
  - [ ] Products API documentation
  * Error/Status codes
  * Permissions
  * Description - semantic scope
  - **Valid** API documentation - unified OIH interface
  - **Stable** API interface - unified OIH interface

### Provision a transformer extension - threshold towards smart connector
  - [ ] Transformer as extension to Snazzy's adapter
  - [ ] Transformer as extension to SilverERP's adapter
  - [ ] Transformer as extension to Wice's adapter

### Challenge standard integration flows - mock smart data component
  - [ ] Standard integration flow mapping from Snazzy model towards Smart Data Framework model
  - [ ] Standard integration flow mapping from SilverERP model towards Smart Data Framework model
  - [ ] Standard integration flow mapping from Wice model towards Smart Data Framework model

### Challenge standard integration flow via smart data framework
  - [ ] **Permitted** semantic transformations (derived specs)
  * Rules about hierarchy and relations between data objects / roles - privacy flags
  - [ ] **Valid** permission model
  - [ ] **Valid** conflict case predictions
  * Reduce potential of write conflicts - optimize integration flows
  - [ ] **Valid** JSON schema for meta data
  * Determine kind and scope also reusability of meta data - in delimitation towards domain models
    * Event (uni/multi/broadcast/segmented), ownership (tenant, group, user), source/target app
      * Characteristics: name, type, size, etc. - event
      * Rule & policy: permission, CRUD timestamp and relation - event
  - [ ] **Valid** standard data model - hierarchy of data models
  - [ ] **Stable** standard + custom integration data flows

---

**Good to know:**

[Interfaces to retrieve/propagate the integrated models](https://github.com/openintegrationhub/Data-and-Domain-Models/issues/65#issuecomment-364101112)

[Information to collect per data point](https://github.com/openintegrationhub/Data-and-Domain-Models/issues/68#issuecomment-364100972)

**Sources:**

[Open Integration Hub - scenarios / glossar](https://github.com/openintegrationhub/Board/blob/d8020ce1bb0abd16c2be68aa7a95e9cc9ea975e1/protocols/2017-11-13BoardWorkshop.md#oih-board-meeting-protocol)

[Integration levels - components](https://github.com/openintegrationhub/Architecture/blob/d898a557a7faeaef213ffd60c7fc9cf525c3d9fa/Protocols/2017-11-29Workshop.md)

[Building block - connector](https://github.com/openintegrationhub/Architecture/blob/d898a557a7faeaef213ffd60c7fc9cf525c3d9fa/baseArchitecture.md#building-block)

[Adapter - specs / requirements](https://github.com/openintegrationhub/Connectors/blob/2f15948445318dc923ebb83754d8ae8da3f0fad8/Adapters/AdapterGuide.md)

[Integration flows - content repo](https://github.com/openintegrationhub/Microservices/blob/3cef84f584045d08d1df13f7945f46896ae737d4/RepositoryManagement/IntegrationContentRepository.md)

[Smart Data Framwork - specs](https://github.com/openintegrationhub/Microservices/blob/f35cf15465df42c42fbc59a03a14158ebac82192/DataHub.md)

[Proof of concepts - roadmap ](https://github.com/openintegrationhub/Architecture/blob/d58e8b1750022d95c5339ed39502d9d77b1166e1/Roadmap/RoadmapV1.md)
