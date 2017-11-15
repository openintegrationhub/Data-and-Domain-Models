# elasticio-snazzycontacts-component
> [Snazzy Contacts](https://snazzycontacts.com) Node.js component for [elastic.io platform](http://www.elastic.io "elastic.io platform")

This is a connector(*component*) which connects [Snazzy Contacts](https://snazzycontacts.com) with [elastic.io platform](http://www.elastic.io "elastic.io platform"). With this connector you are able to create different flows in [elastic.io](http://www.elastic.io "elastic.io platform"). The component supports **"Triggers"** (e.g. ``getPersons``, ``getOrganizations``) as well as **"Actions"** (e.g. ``updatePerson``, ``createOrganization``, ``updatePersonsOrganization``, etc.), therefore with this component you could both read and fetch data from [Snazzy Contacts](https://snazzycontacts.com) and write and save data in [Snazzy Contacts](https://snazzycontacts.com) via [elastic.io platform](http://www.elastic.io "elastic.io platform").

## Before you Begin

Before you can use the component you **must be a registered snazzy contacts user**. Please visit the home page of [https://snazzycontacts.com](https://snazzycontacts.com) to sign up.
> Any attempt to reach [Snazzy Contacts](https://snazzycontacts.com) endpoints without registration will not be successful

After you are already registered in [Snazzy Contacts](https://snazzycontacts.com) you have to activate your **API key** (in [Snazzy Contacts](https://snazzycontacts.com) named *Data Sharing Key*).
> For activation you **have to be logged in**, then click of ``Administration`` and under ```Einstellungenthen``` click of ``Unternehmensdaten``. Once you are in ``Unternehmensdaten`` click of the button ``Data Sharing aktivieren`` for generating your API key.

Once the activation is done you have an access to **API key** which is required for an authentication when you make a request to Snazzy Contacts.
