
**Table of Contents**

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Introduction](#introduction)
- [Basic Ideas](#basic-ideas)
	- [Basic Idea 1](#basic-idea-1)
	- [Basic Idea 2](#basic-idea-2)
- [Considered Standards](#considered-standards)
	- [WebDAV](#webdav)
	- [CMIS](#cmis)
- [Operations](#operations)
- [Content](#content)
	- [UML Diagram](#uml-diagram)
	- [JSON Schema](#json-schema)
	- [Description Table](#description-table)
- [Additional Content](#additional-content)

<!-- /TOC -->


# Introduction

In the following the master data model for the domain `Documents` is explained in detail. As for every Open Integration Hub Master Data Model, an UML class diagram, a JSON schema as well as a descrption table exists.

# Basic Ideas

One challenge of this model is to fit a wide array of services dealing with documents.
The features from such services, like Dropbox and other more advanced systems like SharePoint or ELO are far apart.

|Type|Description|Example|
|---|---|---|
|Filestorage|A system that can store information (folders/ documents) in an hierarchically organized structure including limited metadata capabilities|Filestorage, FTP, DropBox, OneDrive|
|DMS|A system that stores and organizes documents based on additional metadata or an hierarchically organized structures.|Box|
|ECM/EIM|A system that stores and organizes documents and information based on additional metadata or an hierarchically organized structures.|SharePoint, ELO|

In order to be suitable for both, this model is split into several implementations.

## Transferring documents

## Working with exisiting documents

# Considered Standards

## WebDAV

Reference: https://tools.ietf.org/html/rfc4918

This standard is probably the most widely used one related to document authoring and versionning. 
It is of widespread use and based on an extension of the HTTP protocol.
It however suffers two drawbacks. First, it requires an extension in the web server itself, and cannot be built using plain HTTP.
Second, the protocol and its XML format are both non-trivial and verbose. 
The model presented here attempts to be compatible with it, but also extends it with a wide array of optional features.

## CMIS

Reference: http://docs.oasis-open.org/cmis/CMIS/v1.1/CMIS-v1.1.html

This standard is used in the "Document Management Industry" to some extend.
The protocol is based on SOAP and is 335 pages long. In other words, small companies might face a challenge due to its scope and complexity.

# Operations

CRUD functionalities can be performed based on the model.

This folder contains a draft of [operations](DocumentModelDescription.md) that can be used for building rest webservices.

# Content

## UML Diagram

_Please provide the UML class diagram of the model._

## JSON Schema

JSON Schema definitions will follow as soon as the model has been reviewed.

## Description Table

In addition to the uml class diagram, this folder contains a [description table](DocumentModelDescription.md) which includes the following information for each attribute:
- Type
- Properties
- Short description
- Example values
- Enumeration options (if attribute is an enumeration)

