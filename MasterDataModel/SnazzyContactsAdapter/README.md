# elasticio-snazzycontacts-component
> [Snazzy Contacts](https://snazzycontacts.com) Node.js component for [elastic.io platform](http://www.elastic.io "elastic.io platform")

This is a connector(*component*) which connects [Snazzy Contacts](https://snazzycontacts.com) with [elastic.io platform](http://www.elastic.io "elastic.io platform"). With this connector you are able to create different flows in [elastic.io](http://www.elastic.io "elastic.io platform"). The component supports **"Triggers"** (e.g. ``getPersons``, ``getOrganizations``) as well as **"Actions"** (e.g. ``updatePerson``, ``createOrganization``, ``updatePersonsOrganization``, etc.), therefore with this component you could both read and fetch data from [Snazzy Contacts](https://snazzycontacts.com) and write and save data in [Snazzy Contacts](https://snazzycontacts.com) via [elastic.io platform](http://www.elastic.io "elastic.io platform").

## Before you Begin

Before you can use the component you **must be a registered snazzy contacts user**. Please visit the home page of [https://snazzycontacts.com](https://snazzycontacts.com) to sign up.
> Any attempt to reach [Snazzy Contacts](https://snazzycontacts.com) endpoints without registration will not be successful

After you are already registered in [Snazzy Contacts](https://snazzycontacts.com) you have to activate your **API Key** (in [Snazzy Contacts](https://snazzycontacts.com) named *Data Sharing Key*).
> For activation you **have to be logged in**, then click of ``Administration`` and under ```Einstellungen``` click of ``Unternehmensdaten``. Once you are in ``Unternehmensdaten`` click of the button ``Data Sharing aktivieren`` for generating your API key.

Once the activation is done you have an access to **API Key** which is required for an authentication when you make a request to Snazzy Contacts.

## Actions and triggers
The connector supports the following **actions** and **triggers**:
#### Triggers:
  - Get persons (```getPersonsPolling.js```)
  - Get organizations (```getOrganizationsPolling.js```)

#### Actions:
  - Create person (```createPerson.js```)
  - Create organization(```createOrganization.js```)
  - Delete person (```deletePerson.js```)
  - Delete organization (```deleteOrganization.js```)
  - Update person (```updatePerson.js```)
  - Update person's organizations (```updatePersonsOrganization.js```)
  - Update organization (```updateOrganization.js```)

> **NOTE:** As mentioned before, to perform an action or a trigger you have to be a registered [Snazzy Contacts](https://snazzycontacts.com) user and you have to pass your **API Key** (in [Snazzy Contacts](https://snazzycontacts.com) named *Data Sharing Key*) when you send a request.

In each trigger or action, before sending a request we create the session in [Snazzy Contacts](https://snazzycontacts.com) calling a function ```createSession()``` from ```snazzy.js``` file, which is located in directory **actions**. This function creates a session and as a second parameter accepts a callback function ```continueOnSuccess()``` which calls the certain trigger or the action.

***

### Component tree structure

    |-- .gitignore
    |-- README.md
    |-- component.json
    |-- logo.png
    |-- package-lock.json
    |-- package.json
    |-- verifyCredentials.js
    |-- lib
        |-- actions
        |   |-- createOrganization.js
        |   |-- createPerson.js
        |   |-- deleteOrganization.js
        |   |-- deletePerson.js
        |   |-- snazzy.js
        |   |-- updateOrganization.js
        |   |-- updatePerson.js
        |   |-- updatePersonsOrganization.js
        |-- schemas
        |   |-- createOrganization.in.json
        |   |-- createOrganization.out.json
        |   |-- createPerson.in.json
        |   |-- createPerson.out.json
        |   |-- deleteOrganization.in.json
        |   |-- deleteOrganization.out.json
        |   |-- deletePerson.in.json
        |   |-- deletePerson.out.json
        |   |-- getOrganizations.out.json
        |   |-- getPersons.in.json
        |   |-- getPersons.out.json
        |   |-- updateOrganization.in.json
        |   |-- updateOrganization.out.json
        |   |-- updatePerson.in.json
        |   |-- updatePerson.out.json
        |   |-- updatePersonsOrganization.in.json
        |   |-- updatePersonsOrganization.out.json
        |-- triggers
            |-- getOrganizationsPolling.js
            |-- getPersonsPolling.js
