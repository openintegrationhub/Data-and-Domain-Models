# Protocol

**Attendees:** Lutz, Hansjörg, Josef, Raphael **Guests:** Frank, Philipp (minute taker) **Absent:** Andreas G.

## Workshop Protocol (from 21.12.2017)
* Has been accepted on GitHub [2017-12-21WorkgroupTelko.md](https://github.com/openintegrationhub/Data-and-Domain-Models/blob/master/Protocols/2017-12-21WorkgroupTelko.md)

## Schema definitions
* Example excerpt [shared-definitions.json](https://github.com/openintegrationhub/Data-and-Domain-Models/issues/35#issuecomment-353558851) on how to distinguish multiple network IDs
- Current type string for `social` doesn't restrict the input e.g. it can be an url, network name, etc. There will be a lot of different inputs. Therefore a restriction is not applicable.
- The suggestion below [- see issue 35 (comment by Raphael) -](https://github.com/openintegrationhub/Data-and-Domain-Models/issues/35) is a proper way to model the entity social, so that there are loose restrictions but completeness is ensured.
_Suggestion:_

```
"Social": {
	"type": "object",
	"properties": {
		"network" : {
			"type" : "string",
			"description": "Provision name of social network"
		},
		"id": {
			"type": "string",
			"description": "Provision social network ID"
		}
},
```

## Unify/Merge VisualPradigm projects
- Visual Paradigm _projects_ need to be part of the open integration hub project (not part of the single partner projects/repos), to enhance collaboration.
  - The solution finding process for this issue is moved to the workshop on the 17.01.2018
  - Provide a suggestion how to solve/handle this issue **Lutz**

## Workshop agenda planning
* Expanding the prototype by including a smart data framework (data hub) component on the elastic.io platform
  - It must be clarified which functionalites can be implemented on the elastic.io platform / boundaries of the elastic.io platform must be clarified. (Keyword: Adapter)
  - _Josef:_ The "data hub component" is not problematic. Elastic.io needs to be asked for support, when it comes to the mapping of tree structures (aggregates)
  - A call with Igor needs to be arranged prior to the workshop to discuss the next steps of the prototype
* Test models with real data and adjust the model
* Explicit feedback by the architects & developers for further discussions
- Roadmap for the next milestone (30.06.2018)
  - What needs to be done / provided?
  - What is the output of the "prototype 0.5"
  - ...

## Report to the DLR
- Delete TOCs
- JSON-Schemas will be reported as .json files

## Next Steps
- [ ] Provide a suggestion how to solve/handle the visual paradigm projects **Lutz** till **17.01.2018**
- [ ] Arrange call with Igor **Raphael** till **16.01.2018**
- [ ] Next appointment on **17.01.2018** at **09:00 am** at **Cloud Ecosystem - Altes Hafenamt**
