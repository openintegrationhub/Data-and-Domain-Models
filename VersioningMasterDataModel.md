# Versioning of Master Data Models

## 1 Goals

### 1.1 Definition of Workflows

There should be well documented processes for:

* Creating a change request  
* Reviewing a request
* Approving/rejecting a request
* Releasing/deploying a new version

For these processes we should define:

* Who are the **contributing community members**(e.g. corporate members, associates,  individual members) and who are
 the **decision makers** (e.g. steering board, technical board, technical workgroup, administrator) of this process? 
* **Guidelines** for the decision processes
* **Channels/Software/Tools:** By which means do we e.g. create a change request? (Website form, JIRA, Github, ...)
* **Release cycles**: Shall we have periodic or nonperiodic release cycles? In the case of periodic release cycles: 
How often shall a new version be released? Shall extra-releases be allowed and under which conditions?
* **Tracking of changes**: How could a change log look like? 
* **Upgrade Propagation**: How and to whom shall changes be communicated?

### 1.2 Technical Concept and Solution

Changes of a Master Data Model may have impacts on other Open Integration Hub components. We have to clarify in detail, which kind of changes shall be allowed in consideration of the potential resulting technical restrictions. Furthermore we have to think about how we manage release and upgrade of a master data model’s version. So the following questions are arising:

* Which data model changes are possible in principle and **which changes are not allowed?** And what are the reasons for
 that?
* Which **technical restrictions** do we have to consider?
* Which **impacts on Data Hub** (data migration …) do Master Data Model changes have?
* Which **impacts on Connector versioning** do Master Data Model changes have?
* Which **impacts on REST-API**  versioning do Master Data Model changes have?
* Shall it be possible to run **APPs which use different versions** of a master data model?
* How shall a **version name pattern** look like? Which impacts on the pattern do the kind of allowed changes have?
* Which **Software Configuration Management** tool do we use? How is the process model of Master Data Model versioning 
and upgrading implemented there?
* Which correlations are between **Master Data Models, private Master Data Models and Specialized Master Data Models**? 
Do they possibly influence some of the decisions described above?
* Is it possible to derive **“Best Practices” for the definition of private Master Data Models**?



