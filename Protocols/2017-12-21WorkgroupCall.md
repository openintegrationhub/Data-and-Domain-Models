# Protocol

**Attendees:** Lutz, Hansjörg, Josef, Raphael **Guests:** Frank, Philipp (minute taker) **Absent:** Andreas G.

## Workshop Protocol (from 19.12.2017)
* Agreeing [2017-12-19WorkgroupTelko.md](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/Protocols/2017-12-19WorkgroupTelko.md)

- Agreed on protocol. Will be merged into master.

## Walkthrough results on GitHub
- [x] JSON schema [addresses - organization](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/src/main/schema/addresses/organization.json) **by Hansjörg**
  - This schema decribes the object organization
  - Arrays of objects to represent the multiplicities e.g. an organization can have varying numbers of addresses
- [x] JSON schema [addresses - person](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/src/main/schema/addresses/person.json) **by Hansjörg**
  - This schema decribes the object person
- [x] JSON schema [addresses - relation](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/src/main/schema/addresses/relation.json) **by Hansjörg**
  - This schema decribes the object relation
  - Used to describe the different relation types e.g. organization to organization
- [x] JSON schema [addresses - sharedDefinitions](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/src/main/schema/addresses/sharedDefinitions.json) **by Hansjörg**
  - The schema includes definitions which are used in the three other JSON schemas, e.g. category
- [x] JSON schema [products](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/src/main/schema/products/product.json) **by Josef**
  - Create consistent wording between UML and JSON
- [x] [Regulations](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/DataModels/DataModels.md#rules-and-regulation-for-mdms) **by Lutz**
  - Suggestion by Lutz: Always describe the first letter of a class in uppercase
  - Regulations which need to be fulfilled in order to create a new master data model that is contributed to the open integration hub
  - [DataModels.md](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/DataModels/DataModels.md) has been expanded and includes rules and regulations (some of them are derived from _Hansjörgs_ [RulesandRegulations.md](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/DataModels/RulesandRegulations.md)
  - Mandatory if a dataset is pushed into the open integration hub: _ApplicationDataRecord_
  - Snippets are used to explain and illustrate certain statements

## Provision results of our 1st milestone
* Current results overview [of the Board](https://github.com/openintegrationhub/Board/blob/de265ec062beb0a293629bc5aa67320fb73de776/Milestones.md#result-3---generic-datamodel-for-addresses-and-products-including-guidelines-and-decision-processes)
* Give [direct access](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MilestoneOne.md) through our repo page
- Provision an entry page to our MS1 results, for our repo - use permanent links.

## Align the files and folders naming syntax
- Source Code (currently json schemas) is located within a **src** folder in the root
- All files (excluding source code files) will be named in _Camel Case_ format

## 1st Workshop in 2018
* We stick with the 17th Jan. '18 - **Hafenamt**

## Contribute to the next milestone
- Expanding the prototype by including a smart data framework (datahub) component on the elastic.io platform
- Test models with real data and adjust the model
- Feedback by the architects & developers for further discussions
  - Adjust the existing results to the feedback

## Next Steps
- [ ] Create consistent wording between UML and JSON **Josef** till **late 21.12.2017**
- [ ] Create consistent wording across all master data model files **Hansjörg, Lutz, Josef** till **21.12.2017**
- [ ] Find a date for regular status calls - postponed till Andreas G. is back from vacation
- [ ] Exporting the final results for milestone 1 into the needed format latest **03.01.2018**
- [ ] Next appointment on **02.01.2018** at **14:00 am**
- [ ] Next workshop takes place on the **17th of January 2018** at **Altes Hafenamt - Cloud Ecosystem**
