# Master Data Model

The GraphQL schema definition language provides a sustainable starting point, to describe flexible data models for the open integration hub runtime.

### In this language we can explicitly describe:
* the data model (object)
  * with types
  * and its fields;
* a type of each field
  * and if it is non- or nullable,
  * or even an array;
* the relations between the data models (objects)
  * by defining their directionality.

### Then, we can easily continue with:
* developing up to one resolver (function) per field, to route:
  * any protocol,
  * any database,
  * any micro service,
  * any legacy system or API,
  * in any programming language.

### The GraphQL specification:
* is infrastructure agnostic,
* foster an iterative design process,
* uses a tight and simple notation,
* provides only one API endpoint
  * which is seamlessly extensible
  * where clients define custom payloads,
* and is machine readable from ground up.

[GraphQL cheat sheet](sources/graphql-shorthand-notation-cheat-sheet.pdf)

## Schema - Customer Data (example)
```
enum GENDER {
  female: String!
  male: String!
}

  # Define the object model - Person:
  # define its fields - non- or nullable (array),
  # reference its enums - defined at the top,
  # set its relations - incl. directionality.

type Person {

  id: ID! @isUnique
  firstName: [String!]
  lastName: String
  birthdate: DateTime

  gender: GENDER!

  channel: Channel @relation(name: "PersonOnChannel")
  address: Address @relation(name: "AddressOnPerson")
  company: Company @relation(name: "CompanyOnPerson")
}

type Channel {

  id: ID! @isUnique
  email: [String!]
  mobile: [String!]
  phone: [String!]
  fax: [String!]
  web: [String!]

  company: Company @relation(name: "CompanyOnChannel")
  person: Person @relation(name: "PersonOnChannel")
}

type Address {

  id: ID! @isUnique
  street: String
  number: String
  zip: String!
  city: String!

  companies: [Company!]! @relation(name: "AddressOnCompany")
  persons: [Person!]! @relation(name: "AddressOnPerson")
}

type Company {

  id: ID! @isUnique
  name: String!

  address: Address @relation(name: "AddressOnCompany")
  channel: Channel @relation(name: "CompanyOnChannel")
  persons: [Person!]! @relation(name: "CompanyOnPerson")
}
```
## Schema - Product Data (draft)
```
type Materials {
  id: ID!
  type: String
  weight: Float
  unit: String
  dimensionX: Float
  dimensionY: Float
  dimensionZ: Float
}

type Goods {
  id: ID!
  maker: String
  size: String
  color: String
}
```
# Sources
[GraphQL live demo](http://graphql.org/swapi-graphql)

[GraphQL specification - Oct 2016](http://facebook.github.io/graphql/October2016/)
