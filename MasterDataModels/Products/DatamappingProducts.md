# Data-Mapping of Products

This document describes the evaluations of the data-mapping of the products
within the Open Integration Hub.

# Why is data-mapping necessary?

One of the fundamental problems of the integration of data is the data-mapping.
Data-mapping is the process which moves different elements of data between
different models of data. There are different ways to resolve this task.

A data-model is a model which describes the data and its elements of a specific
domain, in this case the domain "Products". The integration of product-data is
one of the main tasks of the whole OIH-Project. It's a fundamental and critical
function of the Open Integration Hub.

The data-mapping is necessary for the OIH, because most of the time the object
models of product-data are similar, but in detail different. The data is similar,
but the structure is different. You see data-sources which contains failures or
dublettes or you for example can't see automatically if the specific element is
a surname or not. Traditionally the mapping is hand-coded, where the data is
copied between the objects. This is not very efficient and uses much resources.
On the long run an algorithmic way would be more efficient.

**Possible solutions for data-mapping of Products**

Algorithmic data-mapping can be put in different ways in function.
You can implement it via procedural code, you can use xslt-transformations or
with graphical mapping-tools, which build the code for the transformation.

With graphical tools you can draw lines between the fields of data structure.
Intelligent tools are able to see the relations between those fields by their
name or values. From the defined relations they are generating SQL, XSLT or
programm code. These tools are most of the times part of etl-tools (Extrac,
Transform, Load).

For semantic mapping you can use metadata collections. These collections extend
the automatic identification of the relations of the graphical tools to see
possible synonyms. For example if a data source contains of a product that can be sold and/or purchased or can be produced. Then the semantic mapping tool can acknowledge,
that this is describing the product and then get further informations which is different for a trading product instead of a product that has to be produced.

A relative new field of research is the data driven mapping. It tries to foresee
the mapping via heuristic evaluation and statistic methods of the data values
of different data sources. The expectation is to see parts of the data, older
collections of data or arithmetic relations or exceptions.
