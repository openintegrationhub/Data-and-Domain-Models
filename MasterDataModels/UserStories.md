# Introduction

This documents lists user stories for all currently existing domains. These user stories are derived from different stakeholders such as software vendors and integration provider.
The user stories are sorted by domains.

# Addresses

|User Story Id| User Story |
|:---| :--- |
|Ad-1|As a Company, I want to Import all Contacts from my DMS so that I have all my business partners in my CRM |
|Ad-2|As a Company, I want Export all my CRM Contacts to my DMS so that I can easily assign Sender/Receiver to Documents|
|Ad-3|As a OIH User I want to import/export Contacts so that the references to my documents stay intact|
|Ad-4|As a Company want export my contacts to my DMS so that I can easily start business cases with them|
|Ad-5|As a Company, I want export my contacts to my DMS so that I can easily send  them documents|
|Ad-6|As a user, I want to synchronize my contacts through the Open Integration Hub with other applications such as a net PBX so that my contact data is up-to-date in all of my applications|
|Ad-7|As a user, I want other people in my company to work together on shared contacts so that we all have one contact base|
|Ad-8|As a system administrator, I want to backup all contacts in just one place so that I have just one contact repository|
|Ad-9|As a co worker, I want to use the shared contact book so that I have just one source for all project based contacts|
|Ad-10|As a secretary, I want to use the shared contact book so that I always have the right contact information in just one place|
|Ad-11|As a project management solution user, I want to transfer my contacts to OIH so that other applications like my back office / accounting application can use those contacts (one off)|
|Ad-12|As a project management solution user, I want to transfer addresses of my contacts to OIH so that other applications like my back office / accounting application can use those addresses (one off)|
|Ad-13|As a project management solution user, I want to retrieve synchronously (i.e. via webhook) contacts from OIH so that my application will be kept up to date|
|Ad-14|As a project management solution user, I want to retrieve synchronously (i.e. via webhook) addresses of contacts from OIH so that my application will be kept up to date|
|Ad-15|As a user of application XYZ I want to move to project management solution and don’t want to reentry all contact and address data again but rather use Open Integration Hub to transfer from XYZ to my project management solution|
|Ad-16|As a book-keeper, I want to generate invoices with my ECM, using the customer address stored within the CRM system|
|Ad-17|As a book-keeper, I want to use the e-mail addresses stored within the CRM system to send the generated invoices to the appropriate recipients|
|Ad-18|As a project-manager, I want to automatically create user-logins within my ECM for manually selected customers of the CRM system|
|Ad-19|As a controller, I want to read out the duration of all appointments with a specific customer over a given period (e.g. last month) to create a project KPI within my ECM|
|Ad-20|As an arbitrary user, I want to use the e-mail addresses stored within the CRM system to get a list of possible recipients when creating an e-mail within my ECM|
|Ad-21|As a CRM user, I want to forward created contacts in my CRM so that they can be used in the other system|
|Ad-22|As a CRM user, I want to see contacts that were created in a different system in mine so that I can use them in ways the other system doe not allow|
|Ad-23|As a CRM user, I want see contacts updates forwarded to the other system so that they are always up-to-date|
|Ad-24|As a CRM user, I want to see contacts updates forwarded from the other system into mine so that they are always up-to-date|
|Ad-25|As a CRM user, I want forward contact deletions from my system into the other so that I don’t process invalid leads|


# Collaboration

|User Story Id| User Story |Sub-Domain|
|:---| :--- |:---|
|Co-1|As a user, I want to synchronize my calendar through the Open Integration Hub with other applications such as mobile devices so that my calendar data is up-to-date in all of my applications |Calendar|
|Co-2|As a user, I want other people in my company to work together on shared calendars so that we all have one calendar base |Calendar|
|Co-3|As a system administrator, I want to backup all calendars in just one place so that I have just one calendar repository |Calendar|
|Co-4|As a co worker, I want to use the shared calendar so that I have all project based appointments in one place |Calendar|
|Co-5|As a secretary, I want to use the shared calendar so that I am able to make appointments without conflicts |Calendar|
|Co-6|As a CRM user, I want to forward emails sent in my system to the other (i.e email campaigns system), so they are visible in there|-|
|Co-7|As a CRM user, I want to see emails sent in the other system, forwarded into mine as Interactions, so I can see the interactions with contacts up-to-date|-|

# Documents

|User Story Id| User Story|
|:---| :--- |
|Do-1|As a Bookkeeper, I want to import all documents from my DMS into my bookkeeping program so that I can do the taxes|
|Do-2|As a Company I want archive all my outgoing invoices in my DMS so that I have one place for all documents|
|Do-3|As a Company, I want archive all my user documents (contracts, etc. ) in my DMS  so I have all documents in one place|
|Do-4|As a Company I want export all documents from my DMS so that I have some local backup of all data on premise|
|Do-5|As a Company, I want export document to my DMS so that I can easily share them with my  clients|
|Do-6|As a user, I want to synchronize my files through the Open Integration Hub with other applications such as ERP systems so that I‘m able to work on my files in all of my applications|
|Do-7|As a user, I want other people in my company to work together on shared files so that we all have one file base|
|Do-8|As a system administrator, I want to backup all files in just one place so that I have just one file repository|
|Do-9|As a co worker, I want to use the shared files so that I have all project based files in one place|
|Do-10|As an accountant, I want to find all invoices in one place so that I can simply send them to the tax consultant|
|Do-11|As a lawyer, I want to digitalize my case files so that i can search though them on an documentation management system|
|Do-12|As a tax accountant, I want get only scans of receips so that i don’t have to handle & archive real paper and manage hardware and upload everything to a booking service|
|Do-13|As a distributed company, I want to  so have a central place to receive & manage our mail to decide where the original files need to be forwarded to|
|Do-14|As a  company with old customers, I want to respond to respond to cancellation mail via my existing CRM tool|
|Do-15|As a project manager, I want to have the different output documents of my order management software (e.g. offer, order, invoice, …) accessible and archived within my ECM|
|Do-16|As an account manager, I want to automatically archive the documents generated by my ECM (e.g. invoices)  within the customer-related file within my document management system|
|Do-17|As an arbitrary user, I want to find and view documents through one search-interface, no matter if they are stored within my ECM or any document management system  connected through the OIH|
|Do-18|As an arbitrary user, I want to retrieve the full text content of a scanned document within my ECM (Without an OCR engine, it must share the document with a DMS and read out the extracted content afterwards)|
|Do-19|As a customer, I want to retrieve through my ECM a rendered preview of a building plan without having an appropriate local renderer installed (e.g. a CAD file without a CAD viewer). My ECM retrieves the rendition from the DMS|

# Products

|User Story Id| User Story |
|:---| :--- |
|Pr-1|As an e-commerce solution user, I want Import new orders from my shop or marketplace to my solution |
|Pr-2|As an e-commerce solution, I want export “parcel sent”-Status by the solutions' Webhook to my (Shop/Marketplace) |
|Pr-3|As an e-commerce solution, I want export current quantites to my shop or marketplace |
|Pr-4|As an e-commerce solution, I want export new products to my shop or marketplace |
|Pr-5|As an e-commerce solution, I want export orders and/or customers to my ERP/financial accounting program |
