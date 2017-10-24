# Introduction

- _TODO:_ What is the OIH meta model? What is its purpose?

## Requirements

- mulit-tenancy support
- conflict management support
- extensibility per tenant

# Multi-Tenancy

SaaS applications and multi-tenancy go hanad in hand. Hence, for the OIH it is essential to support multi-tenancy out pf the box.

The meta model to describe master data models in the OIH must provide an identifier for the tenant which is the data's owner.

# Conflict Management Support

- timestamps for _created_ and _last modified_
- alternatively versioning by revision numbers
- or both?

# Notation / Schema

As of now, there are two important contemporary forms in which structured data is exchanged:

- XML and
- JSON.

Both should - sooner or later - be applicable by the OIH at least at its outer boundaries. When it comes to the internals of the OIH, espacially the data hub, it is essential to decide for one of those alternatives, as the OIH will provide automatisms like conflict management, and the focus on one alternative will reduce implemenation efforts and risk.

Proposal: JSON!
<!--TODO: argumentation...--

## JSON-Schema vs. GraphQL


# Extensibility per Tenant

In case the master data model provided by the OIH is lacking of one or more fields or a specific tenant, and there is no sense in applying this extension to the global master data model, there should be a possibility to add those tenant specific fields only in the tenant's specific context.

# Granularity

- DDD:
	- Bounded contexts
	- Aggregates
	- loose coupling
	- multiple aggregates/entities per master data model

# Security / Authorization

- ACLs/ACEs