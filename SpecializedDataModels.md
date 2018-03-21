# Specialized Data Models - First Ideas and Thoughts

## Assumptions to Be Confirmed

- A specialized data model is an extension of one of the Master Data Models (at the moment the product data model or the address data model).
- There is at most one specialized data model per Master Data Model.
- The ISVs shall be capable of changing/extending a specialized data model for their own purposes (via API and/or UI).

## Proposals/Questions to Be Discussed

* If an ISV changes a specialized data model, it must get a new **version number**.
* It shall be possible to **fetch older versions** of a specialized data model to track changes.
* The properties of a specialized data model must be **optional**.
* **Which changes should be allowed?**
    * **Add property --> allowed**
    * **Delete properties --> recommendation: not allowed?**
      The deletion of a property only makes sense, if an ISV wants to delete one of his formerly added "own" properties. Nevertheless there is no guarantee that this property is not already used by another ISV now. Or is there any chance to check automatically whether this property is already used by another ISV? On the other hand, for example, how shall we cope the problem, that two ISVs may add two properties independently, which represent the same data?
    * **Change properties --> recommendation: not allowed?** 
      The same reasons as mentioned at "delete properties" apply.
      Furthermore - if you think of changing the type of a property - the well-known problems with data type conversions apply. But what shall be done if an ISV detects a typo shortly *after* adding a new property?
* Furthermore the **compatibility** to the last version should be somehow automatically checked/tested, and also if the version number of the schema has been incremented. Question: Should  some thresholds also be checked (e.g. maximum number of properties, maximum number of properties of type "object", total size of the specialized data model ...)?
* **Properties of a common topic shall be grouped**: If several properties belong to a common topic, they should be grouped in the specialized data model's schema, example:

```
    {
	         "$schema": "http://json-schema.org/draft-04/schema#",
	         "$id": "http://openintegrationhub.org/schemas/products/special-data-model.json",
	         "title": "Special Data Model Product",
	         "description": "Special Data Model for Product",
	         "allOf": [
		           {
                  "$ref": "http://openintegrationhub.org/schemas/products/product.json",
		           }
	         ],
	         "properties": {
		           "version": { "type": "integer" },
                   "specialDataForTopic1": { "type": "object",
                                     "properties": {
                                     "property1OfTopic1": {"type": "string"},
                                     "property2OfTopic1": {"type": "integer"}
                                      },
                   },
                   "specialDataForTopic2": { "type": "object",
                                     "properties": {
                                     "property1OfTopic2": {"type": "string"},
                                     "property2OfTopic2": {"type": "integer"}
                                      },
                   }
             }
    }
```
* **Extension of REST API / Transformer** will be necessary.



## Some Words to JSON Schema

* **JSON Schema does not support inheritance**
https://spacetelescope.github.io/understanding-json-schema/reference/combining.html, see description of "allOf".
* **Superfluous data are allowed in JSON Schema**
https://spacetelescope.github.io/understanding-json-schema/reference/object.html, see examples in section "Properties".
* **Nice JSON Validator**
https://www.jsonschemavalidator.net/, if you want just to try some things out.



