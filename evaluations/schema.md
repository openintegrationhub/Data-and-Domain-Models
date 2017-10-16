
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
