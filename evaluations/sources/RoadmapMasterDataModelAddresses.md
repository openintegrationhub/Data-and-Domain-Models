# Roadmap to the master data model
The master data model is a data structure, consisting of generic attributes, that reflect the overlapping fields (attributes) of all integrated applications (specific data models) - within an integration scenario. Those attributes will stand out as a result (master data model) of the following steps.

The master data model will grow with each application (specific data model) that brings new fields (attributes) into an integration scenario - to be synchronized. The complexity of an integrations scenario affects the amount of required attributes (fields) for a master data model, due to each new data model (app specific) which hasn't been covered till then.

> The following steps describe a hands on approach which results in a master data model - at least the addresses part. Some statements need to be refined due to meetings with domain experts. _Some steps might be skipped in order to result in a master data model._

## Identify generic address fields
* Setup a test case where at least two data models (applications) become synced - **synchronously**
  * Build your app component for the individual field mapping at elastic.io
    * [Snazzy] -> [component]
    * [SilverERP] -> [component]
  * Map those fields that should be synced between the applications (over elastic.io)
    * [Snazzy] <-> [component] = [field mapping via elastic.io] = [component] <-> [SilverERP]
  * Derive transformation rules that allow a data synchronization in both directions
  * Synchronize (address) data between the integrated apps - **bidirectionally**
    * [Snazzy] -> [elastic.io] -> [SilverERP]
    * [Snazzy] <- [elastic.io] <- [SilverERP]
* **Extract the generic attributes derived from the mapped fields**

  **To be discussed**
  * Which format will be used to describe the master data model?
  * Will the special fields of an app only exist in its specific data model?

## Synchronize data over the master data model
* Integrate the derived master data model into the test scenario
  * Define the rules for the data transformation between the data models
    * Snazzy [specific data model] <-> transformation rule set = [master data model]
    * SilverERP [specific data model] <-> transformation rule set = [master data model]
* _Install a message queue to enable asynchronous synchronization between the integrated apps_    
* Synchronize (address) data (***asynchronously***) over the master data model - **bidirectionally**
  * [Snazzy component] <-> master data model & transformation rule set <-> [SilverERP component]
* **Extract the master data model and the derived transformation rule sets**

  **To be discussed**
  * Where will the master data model be hosted?
  * Where is the transformation- and the metadata model be located at?

## Validate the master data model due to a more complex scenario
* Extend the master data model by adding new apps (data models) into the test scenario
  * Define criteria for new apps that will potentially extend the master data model
  * Hand out a technical on boarding (documentation) to its vendors, which want to connect their app
  * Synchronize (address) data (***asynchronously***) between multiple (new) apps - **bidirectionally**
* **Expand the master data model by new generic attributes and update the transformation rule sets**

  **To be discussed**
  * When is the master data model ready to be used in production?

![Test environment graph](https://github.com/openintegrationhub/architecture/blob/fbaa08302287b4558a5811bbdc9e23d1d4b0ff07/images/SystemScopeV1.1.png)

## _Cases to be considered_
* _Cleansing process_
* _Syntactic transformation_
* _Semantic transformation_
* _Object transformation - merge/split entities_

## _Possible scenarios_
* _Initial migration scenario - clone reference implementation_
  * _append business apps_
  * _removed business apps_
* _Migrate into running business scenario / market place_
