<p align="center">
  <img src="https://github.com/openintegrationhub/openintegrationhub/blob/master/Assets/medium-oih-einzeilig-zentriert.jpg" alt="Open Integration Hub (OIH)" width="400"/>
</p>

Open source framework for easy data synchronization between business applications.

Visit the official [Open Integration Hub homepage](https://www.openintegrationhub.org/)

## Introduction

[![License](https://img.shields.io/badge/License-Apache%202.0-yellow.svg)](LICENSE)

The Open Integration Hub enables data synchronization across a variety of applications. This requires unified data structures — the master data models of the Open Integration Hub. These master data models can make your life easier, but are optional. You can always just do a 1:1 mapping or use your own data models. The models are developed and maintained by the community, so please do not hesitate to give feedback, suggest changes or propose new models.

## Join the Community

Do you have questions, ideas, feedback or just want to chat about integration? Please join our growing developer community on [Slack](https://join.slack.com/t/openintegrationhub/shared_invite/zt-mba97vn9-xus3ZbVxnMr2oQwGegIk5Q)!

## Contribution

### Getting Started

Within the scope of the master data models of the Open Integration Hub you can contribute in two different ways. You can either request/propose a change to an already existing model or contribute a new model for an currently not existing domain.

#### Propose a Model Change

An existing model can be change in different ways. The possibility exists to add or remove something from the model or to change an existing part, such as an attribute.

If you want to propose a model change please open an issue here or against the [monopreo](https://github.com/openintegrationhub/openintegrationhub/issues).

The unified process for changing a model is explained in the following:

1. Fill out the request for model change
2. Submit the proposal
3. The relating workgroup will check the proposal according to fix rules
4. If the proposal is approved the change will be incorporated into the model
5. A new model version will be published within the next release

**Change Request Flow:**

![Change Request](MasterDataModels/Versioning/Assets/change_request.svg)

**Realization of Request Sub-Task:**

![Realization of Request](MasterDataModels/Versioning/Assets/realization.svg)

#### Contribute a new Model

If you want to contribute a new model for a currently not yet existing domain, please consider the following steps:

Before you start please read the [**Introduction into Open Integration Hub master data models**](MasterDataModels/README.md) and [**How to contribute a new data model**](CONTRIBUTING.md#contributing-a-new-data-model).

### Contribution Guidelines

Before you contribute please read our [contribution guidelines](CONTRIBUTING.md).

### Code of Conduct

To see how members of the community are expected to behave, please read the [code of conduct](CODE_OF_CONDUCT.md). We apply the code of conduct defined by the Contributor Covenant, which is used across many open source projects, such as [NodeJS](https://github.com/nodejs/node), [Atom](https://github.com/atom/atom) and [Kubernetes](https://github.com/kubernetes/kubernetes).

## Content

### Folders

- [Decisions](Decisions): This folder contains all outstanding/made decisions by the workgroup categorized by open and closed decisions
- [MasterDataModels](MasterDataModels): This folder contains general information about the data models, an explanation of the OIHDataRecord and all currently existing master data models
- [Protocols](Protocols): Contains meeting protocols of the workgroup meetings
- [src](src): All JSON schemes can be found here. This includes JSON schemes for all existing master data models, the overarching OIHDataRecord and a generic example as a starting point for writing JSON schemes for the relating data model

### Documents

- [CONTRIBUTING](CONTRIBUTING.md): Gathers any rule considering the contribution for the Open Integration Hub project
- [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md): Contains an explanation of the expected behavior of the community members, following the code of conduct defined by the Contributor Covenant
