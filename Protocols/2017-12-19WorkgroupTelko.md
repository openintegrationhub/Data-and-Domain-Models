# Protocol

**Attendees:** Lutz, Hansjörg, Josef, Raphael **Guests:** Jürgen, Andy, Philipp (minute taker)

**Absent:** Andreas G.

## Workshop Protocol (from 15.12.2017)
[2017-12-15WorkgroupTelko.md](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/Protocols/2017-12-15WorkgroupTelko.md) - accidentally merged already due to [DecisionsMade.md](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/DecisionsMade.md)

- Accepted by all

## Final results for the 1st milestone
[Provide deliverables on basis of Lutz' suggestions (Tool + Schema)](https://github.com/openintegrationhub/Data-and-Domain-Models/issues/19) by @hschmidthh @JosefBraeuer till **15.12.2017**

[Provide the regulations on how to design a generic domain model](https://github.com/openintegrationhub/Data-and-Domain-Models/issues/22) by @lashauer @hschmidthh @JosefBraeuer till **15.12.2017**

### Lutz
- [x] JSON Schema 'tree structure' **by @lashauer till early 19.12.2017**
  - Provided a basis schema: [OihDataRecordSchema](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/src/main/schema/oih-data-record.schema.json)
  - Provided an example for the order example: [Order Example](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/src/examples/schema/order.schema.json)
  - Both schemas are work in progress and will be expanded e.g. by _description field_
  - Would like to provide snippets and explanations inline (in the markdown file) and refer to the rest of the schema
- [ ] General regulations for generic data models **by @lashauer till 19.12.17**
  - Will provide regulations according to the needs of WICE and YQ

### Hansjörg
- [x] Generic data model addresses in the shape of an UML class diagram (attached) **by @hschmidthh till 19.12.17**
 * Write down concrete attributes and update UML diagram **by @hschmidt till 15.12.2017**
 - [UML diagram](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/MasterDataModel/Assets/OIHDataModelAdressesUML.png) Lutz: Field (String, enumeration etc.) to specify the sort of the address.
- [x] Specific regulations for the generic data model addresses **by @hschmidthh till 19.12.17**
- [ ] Generic data model addresses in the shape of a JSON schema **by @hschmidthh till late 19.12.17**

#### UML Diagram
- Classes like `phone` or `emails` are encapsulated to enable reusability, as e.g. a person can have more than one phone number and email
  - Categorization of e.g. phone numbers are done by categorizing the person
- Base model is finished
  - Model will be expanded in later stages (e.g. adding attributes)

#### Regulations
- Regulations for creating a new model are written down in [RulesAndRegulations.md](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/DataModels/RulesandRegulations.md)
- Lutz/Raphael: Specific regulations and explanations (e.g. why is the categorization done for a person and not a phone number itself) is needed
  - Josef: These information are descriptions but not necessarily regulations. The information should be part of the MasterDataModel descriptions

#### JSON-Schema
- JSON File needs to be and will be created manually (Visual Paradigms complexity for converting the UML diagram into xml is to high)

### Josef
- [x] Generic data model products in the shape of an UML class diagram (attached) **by @JosefBraeuer till 19.12.17**
  - Provided a UML-Schema and will upload the result on GitHub
- [ ] Specific regulations for the generic data model products **by @JosefBraeuer till 19.12.17**
- [ ] Generic data model products in the shape of a JSON schema **by @JosefBraeuer till late 19.12.17**

## Regular Meetings - calls
**Postponed:** Fixed GoToMeeting every two weeks - **when?**

## 1st Workshop in 2018
**Postponed towards Doodle:** Alternative date at the 3rd KW'18 - **location?**

## Next Steps
- [ ] Reconciliation of the base structure of the JSON Schema by WICE **Lutz and Hansjörg** till **late 19.12.2017**
- [ ] Provide general regulations on basis of the preferences by WICE and YQ **Lutz** till **late 19.12.2017**
  - For this purpose one file will be created with a set of general regulations
- [ ] Upload the UML diagram on GitHub **Josef** till **late 19.12.2017**
- [ ] Upload JSON Schema and regulations on GitHub **Josef** till **late 19.12.2017**
- [ ] Reconciliation of fix appointment for the 1st workshop in 2018 **Raphael**
- [ ] Next appointment on **21.12.2017** at **10:00 am**
