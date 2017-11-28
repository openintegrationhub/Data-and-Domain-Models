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
* provides one unified API endpoint
  * which is seamlessly extensible
  * where clients define custom payloads,
  * which they discover at their finger tips,
* and is machine readable from ground up.

[What is a schema - JSON](https://spacetelescope.github.io/understanding-json-schema/about.html#about)

[JSON schema validation](https://www.highly.co/hl/rwKOijEQwI4JfP)

[GraphQL cheat sheet](https://github.com/openintegrationhub/innovation/blob/master/evaluations/sources/graphql-shorthand-notation-cheat-sheet.pdf)

## Schema - Customer Data (example)
```javascript
enum GENDER {
  FEMALE
  MALE
}

  // Define the object model - Person:
  // define its fields - non- or nullable (array),
  // reference its enums - defined at the top,
  // set its relations - incl. directionality.

type Person {

  id: ID! @isUnique
  title: [String]
  gender: GENDER!
  firstName: [String!]
  lastName: String
  picture: String
  birthDate: String
  position: String

  contact: Contact @relation(name: "PersonOnContact")
  address: Address @relation(name: "PersonOnAddress")
  organization: organization @relation(name: "PersonOnOrganization")
}

type Contact {

  id: ID! @isUnique
  email: [String]
  mobile: [String]
  phone: [String]
  fax: [String]
  uri: [String]

  organization: organization @relation(name: "OrganizationOnContact")
  person: Person @relation(name: "PersonOnContact")
}

type Address {

  id: ID! @isUnique
  street: String
  number: String
  postalCode: String!
  city: String!
  state: String
  country: String

  organizations: [organization!]! @relation(name: "OrganizationOnAddress")
  persons: [Person!]! @relation(name: "PersonOnAddress")
}

type Organization {

  id: ID! @isUnique
  name: String!
  taxNumber: String!

  address: Address @relation(name: "OrganizationOnAddress")
  contact: Contact @relation(name: "OrganizationOnContact")
  persons: [Person!]! @relation(name: "PersonOnOrganization")
}
```
## Schema - Product Data (draft)
```javascript
enum UNIT {
  MEETER
  FOOT
}

type RawMaterials {
  id: ID! @isUnique
  type: String
  weight: Float
  unit: UNIT!
  dimensionX: Float
  dimensionY: Float
  dimensionZ: Float
}

type PhysicalGoods {
  id: ID! @isUnique
  maker: String
  size: String
  color: String
}

type NonPhysicalGoods {
  id: ID! @isUnique
  maker: String
  bytes: Float
}
```
# Sources
[GraphQL live demo](http://graphql.org/swapi-graphql)

[GraphQL specification - Oct 2016](http://facebook.github.io/graphql/October2016/)

[Generic data model](https://en.wikipedia.org/wiki/Generic_data_model)
