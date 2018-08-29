## Protocol - 27.08.2018, Documents Workgroup Call

**Attendees:** Nils, Folker, Arne, Dirk, Dennis

### Question:

``` 
Maybe this will make it hard for implementors to automically map and exchange simple meta data between different systems. 
An alternative approach would be, to have classes for the "most commonly used" document types (e.g. "Image", "Mail", "Word Processor", 
"Audio", "Video") which already have the most important meta information as properties (e.g. "Resolution" and "Color Depth" for images, 
"Sender", "Recipient", "Subject" ... for mails and so on). All kinds of documents not fitting into these categories could still use the 
generic "Document" class and describe their custom-properties solely by the meta-model. This solution wouldn't look as elegant as the 
currently suggested generic approach , but would make it presumably easier to use the model and to search for documents, meeting some
simple requirements (e.g. "give me all mails with Joe Doe as sender"). Don't get me wrong: I'm totally fine with the generic approach, 
I just think we should be sure about the implications. By the way: the SubResource-class doesn't have a metadata-property. 
So we would be restricted to the set of predefined attributes for them, right?
```

### Discussions: 
- "Create classes for the most commonly used document types: e.g. "Image", "Mail", "Word Processor", "Audio", "Video""
  - Dirk: not enough attributes in the "document" object. This way, a lot of mapping would be necessary
  - Nils: geo-id as a solution for mapping problem not possible: implementation-costs would rise, models need to be self-sufficient
 
  - Idea: use a pre-defined bunch of attributes for each sub class of a parent class
  - Idea: separation of normal and technical metadata models

### Next Steps
- [ ] Further discussion of the ideas above **All** 
- [ ] Create Excel sheet to discuss further standard metadata models **Dennis** 
- [ ] Solve issue: redye standalone objects' color of the standard master data model into yellow, following the contribution guidelines **Nils**
- [ ] Define and add further possible attributes in the Excel sheet [Discussion - Standard Metadata Models](https://docs.google.com/spreadsheets/d/1cm6fJFQqVmNusaQIIFaUK7CnMInM1LSz3m1tAz0FV4g/edit?usp=sharing) **All**
- [ ] Review changes and additions from all 4 tasks above **All**
