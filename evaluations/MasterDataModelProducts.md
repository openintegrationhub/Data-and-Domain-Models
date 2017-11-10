# Master Data Model Products

## Table of contents
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->
	- [Table of contents](#table-of-contents)
	- [1. Introduction](#1-Introduction)
<!-- /TOC -->

## 1. Introduction
### 1.1 Purpose of this document
This document describes the evaluation of the master data model for product data. The aim is to establish a comprehensive data model that can meet the requirements of small and medium sized businesses in a variety of lines of sectors. The concept must consider that all data is stored centralized at OIH but will be accessed simultaneously by multiple applications. The model must be applicable both in simplified, reduced settings but also in unique, one of a kind, product cases.    

Work package title:
Requirement Analysis, Concepts & Standardization 
Conception of a Master Data Model for Product data
Responsible partner:
CES
...

Description of AP 2.6, TVB

### 1.2 Particularities of different product environments 
Following are a few examples of product environments which will show the particularities and challenges that must be considered, when storing and managing data in different branches of business. The concept needs to reflect this as a requirement so it can be utilized cross-sectoral.    

#### 1.2.1 Construction materials
Work with construction materials requires that products can be managed in different units, and ideally, converted within.  
For example it is common to order wooden planks in standardized dimensions, but be invoiced in cubic meters. In that case, the product references a certain wood type (possibly of a certain quality), which is warehoused as planks – at the same time, though, the stock will be accounted for in cubic meters.   
Similar conversions are common with sheet metals or cast products. These items are usually sold according to their weight, but will be stocked by length, piece or their square measurement. Especially with manufacturing companies it is not uncommon to sell yard good products that can be cut and converted to piece goods, to then also manage the related stock in both units.  

##### 1.2.2 Textiles
Textile products usually are stock managed in variants. This way a t-shirt can be maintained as one article in the system, but it is available in different sizes, materials and colors. Although not every combination needs to be possible. In addition, product characteristics might be different for each variant. Specifications (and dimensions) can  be different per article, but they might also be applied to a whole product group.

##### 1.2.3 Food

##### 1.2.4 Hazardous Substances

##### 1.2.5 Services

## 2. Requirements for a Master Data Model

### 2.1 General Requirements

The general requirements are similar to those described in the master data model for addresses, apart from the data protection requirements, which are usually higher when dealing with personal data than with product data. 

The master data model for the OIH should be:
- compatible with business models in business-to-business and business-to-consumer
- generic but extend-able for individual applications
- used by the integration services and by the data hub
- cover most of the integration scenarios
- de facto standard for the product data exchange scenarios for SME

### 2.2 User Requirements

For the evaluation of the requirements we used topics, use cases and user
stories

- A topic describes the main issue, e.g. data integrity. We use the topics for
clustering the different use cases and user stories by a specific issue.

- The use case describes a specific business scenario, e.g. syncing data
between two applications. It covers the long term description of the context we
would like to implement. Use Cases are permanent artifacts, which will remain as
long as the product will be developed and supported.
For the use cases we use a Cockburn-style template where user goals,
subgoals or intentions are expressed in every step of the basic flow or
the extensions. This practice makes the requirement specification clearer, and
maximizes the flexibility of the design and the implementations.

- The user story describes a specific scenario from a user perspective, it is an
informal description of a feature. They define what has to be built in the
software project later on, so we can fill our backlog.

The common template of a user story should be:
"As a *role*, I want *capability* so that *receive benefit*"

#### 2.2.1 Topic 'Types of Objects'
While talking about products, we are generally referring to goods, which are purchased, produced or sold. Those products can be both, physical objects or immaterial values. Products can relate to one another and have differing characteristics or features, which can be relevant while using them in business processes.

##### User stories properties of products

| User story: | As a user I need information to purchase / order the product. 
| :--- | :--- |

| User story: | As a user I need information to offer / sell the product.
| :--- | :--- |

##### Use case properties of organization

| Label        | USE CASE - properties of products |
| :---  | :---  |
| **Actor:** | User |
| **Summary:** | Describes adding specific product data to a product |
| **Trigger:** | A user wants to change Product informations |
| **Preconditions:** | The product is already stored |
| **Main Success Scenario:** | Added product data |
| **Failure Scenario:** | Adding product data was not successful |
| **Basic Workflow:** | 1. Chose the product<br/> 2. Add specific product data, e.g. unit, in the appropriate fields<br/> 3. Store the data  |
