# Specialized Data Models - Example Workflow to Be Discussed

## Preliminary remarks

In the following sections there is a sketch of an example workflow for the evolutionary process of changing and versioning a Specialized Data Model and a Master Data Model.  

The example described here shall serve as a basis for further discussions. 

**We should keep on clarifying some assumptions/questions of the former contribution first:**

  
* **We should be aware of the fact, that the procedure model of versioning the Master Data Models could impact the procedure model of versioning Specialized Data Models and should therefore be discussed first.**

* **This is an example for the versioning of Specialized Data Models and its possible consequences concerning the Master Data Models. That means the procedure described in Step 3 is only a special case of versioning a Master Data Model.**

* Is there really only one specialized data model for a master data model, i.e. is the specialized data model specified on OIH level? Or could specialized data models be ISV-specific? The decision will have impacts e.g. on the questions whether properties of a specialized data model must be optional or who is allowed to change the data with which means.


## Example
In our example ISV-X develops an APP-X for companies which deal in screws. Screws are products which have a lot of data, for instance:  

* **material**: steel, stainless steel, zinc plated steel, aluminium, ...  
* **screw head shape**: pan, flat, oval, ...  
* **screw drive**: slot, cross, Frearson, ...

See also: <https://en.wikipedia.org/wiki/Screw>

Let's have a look at the specification of a special sort of screw, the Phillips Flat Head Countersunk: <https://www.fullerfasteners.com/tech/din-965-specifications/>

As you can see, screws usually have DIN and ISO specification. To fully specify a DIN-965 screw, a set of special measurements is necessary:  
* **d1, d2, L, k, m, t**

## Step 1: Creation / Modification of an Individual Field Mapping

**Goal:** The APP-X of the ISV-X shall be connected with another APP-Y of ISV-Y.  

This could be done at first by integration with the means of an individual field mapping of the proprietary models, aside from the OIH models mapping, such as described in (mapping from ISV-1/APP-1 to ISV-N/APP-N):  <https://github.com/openintegrationhub/Data-and-Domain-Models/issues/65#issuecomment-364101112>

**Impacts:**
* Both individual Transformers of ISV-X


## Step 2: Creation / Modification + New Version of a Specialized Data Model

**Goal:** APP-X shall be integrated with a second APP, APP-Z.  

This is the moment to think about the creation or the modification of a Specialized Data Model.

Some of the screw data could already be mapped to Master Data Model properties:
  
**Extract of the Product Master Data Model**
```
{
.....  
	        "dinStandard": { "type": "string" },  
	        "isRohsCompliant": { "type": "boolean" },
	        "netWeight": { "type": "number" },
	        "grossWeight": { "type": "number" },
		"density": { "type": "number" },
		"length": { "type": "number" },
		"width": { "type": "number" },
		"strength": { "type": "number" },
		"innerDiameter": { "type": "number" },
                "outerDiameter": { "type": "number" }  
.....
}
```
**Mapping:**
* dinNumber --> dinStandard  
* d1 --> outerDiameter  
* d2 --> innerDiameter  
* L  --> length  
* m  --> width  

**Note:** The mapping "m --> width" is perhaps not the best idea, since the semantics of m is not really the width of a screw.  
**Question:** I wonder why there is no property for "depth"?

But for the measurements *k* and *t* there are no appropiate mappings, also for the ISO standard number and for the material, screw head shape and screw drive. 

**So let's build a Specialized Data Model for this data:**
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
                   
                     "screwProperties": { "type": "object",
                                     "properties": {
                                     "isoStandard": { "type": "string" },
                                     "material": {"type": "string"},
                                     "headShape": {"type": "string"}
                                     "drive":{"type": "string"}
                     },
                     "screwMeasurements": { "type": "object",
                                     "properties": {
                                     "k": {"type": "number"},
                                     "t": {"type": "number"}
                     },
              },
}
```

**The additional mappings would then be:**

* isoNumber → screwProperties.isoStandard  
* material →  screwProperties.material  
* screwHeadShape →  screwProperties.headShape  
* screwDrive →  screwProperties.drive  
* k →  screwMeasurements.k  
* t → screwMeasurements.t  

**Note:** We simplified the assumptions for the data types.

**Impacts:**  
* Specialized Data Model  
* Both "official" Transformers of ISV-X and ISV-Y  
* Data Hub data (if wanted/configured)

## Step 3: Modification + New Version of Master Data Model

**Goal:**
Let's say, a lot of ISVs also need the additional properties "isoStandard" and "material".
So the OIH admin (or the ISVs) wants to extend the Product Master Data Model:

**Extension of the Product Master Data Model:**
```
.....
	"dinStandard": { "type": "string" },
	"isRohsCompliant": { "type": "boolean" },
		"netWeight": { "type": "number" },
		"grossWeight": { "type": "number" },
		"density": { "type": "number" },
		"length": { "type": "number" },
		"width": { "type": "number" },
		"strength": { "type": "number" },
		"innerDiameter": { "type": "number" },
"outerDiameter": { "type": "number" }
.....
```

Now the mapping of "isoStandard" and "material" has to be changed, i.e. all transformers which use these data have to be changed. Also a migration of Data Hub data has to take place.

**Mapping:**
* ISO → isoStandard
* material →  material

**Note:** Here the structure of the data changed, but the names could also change.  

**Impacts:**  
* Master Data Model  
* Specialized Data Model  
* Transformers  
* Data Hub (if wanted/configured)

**Note:** If the data in the Specialized Data Model are always unstructured "flat" data and the names of the data are kept, then things might get easier.





