**Attendees:** Dirk (REWOO), Tobias (REWOO), Martin (Dropscan), Nils (ELO), Philipp (CES)

# Document Model Feedback

**Current Model:** [Master Data Model Documents](https://github.com/openintegrationhub/Data-and-Domain-Models/tree/master/MasterDataModels/Documents)

- Cardinalities are missing
  - Will be added
- Subresource object should have a link to the _version_ object not to the _document_ object
  - Link will be changed, so subresources can be defined for different versions of a document 
- Should ACL have a link to _version_ instead of _object_?  
  - ACL has a link to _object_ to cover different cases e.g. giving permissions for a complete folder (would not be possible if ACL has a link to _version_ instead of _object_)
- Meaning of _relation_?
  - Relation is meant to describe the relation between two documents e.g. order and invoice
  
# Sending Binary Data
- How can an application send documents via the open integration hub?

1. Send complete files via Open Integration Hub (High traffic / payload)
2. Send an hashed url which can be public and/or limited to a certain timespan
  - Document could be downloaded via the url
  
- Discussion about a proxy to sign URLs to avoid security issues. Can the **Open Integration Hub** cover this taks?
  
# Modification Object
- Nils suggests a modification object to store information about creation/modifcation time and creator/modifier (and lockedBy information)
  
# Tasks
- [ ] Adjust UML Diagram according to agreed changes
- [ ] Discuss topic regarding creation of URLs within the architecture group
- [ ] Discuss topic regarding modification object within the common data model aspects group

# Notes
- As most of the participants are on vacation the next two weeks, the next call will take place in 4 weeks (27.08.18)
  
