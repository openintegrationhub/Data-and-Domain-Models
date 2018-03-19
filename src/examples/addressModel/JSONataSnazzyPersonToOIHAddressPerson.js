{
  "title": "",
  "salutation": salutation,
  "fistName": firstname,
  "middleName": "",
  "lastName": name,
  "gender": "",
  "birthday": birthday,
  "notes": "",
  "createdAt": "",
  "updatedAt": "",
  "displayName": "",
  "tags": [""],
  "owner": "",
  "language": "",
  "nickname": "",
  "calendar": "",
  "requestCalendar": "",
  "busyCalendar": "",
  "photo": "",
  "anniversary": "",
  "email":[
    {
      "email": email,
      "type": "",
      "category": ""
    }
  ],
  "social": [
    {
      "network": [""],
      "userIdentifier": "",
      "type": ""
    }
  ],
  "phone": [
    {
      "phoneNumber": phone,
      "type": "",
      "category": "",
      "messenger": [""],
      "isTextPhone": false,
      "textingEnabled": false
    }
  ],
  "url": [
    {
      "url": url,
      "urlType": ""
    }
  ],
  "fax": [
    {
      "faxNumber": fax,
      "type": "",
      "category": ""
    }
  ],
  "address": [
    {
      "street": $split(private_street, " ")[0] & " " & $split(private_street, " ")[1],
      "streetNumber": $number($split(private_street, " ")[2]),
      "unit": "",
      "zipCode": private_zip_code,
      "city": private_town,
      "district": "",
      "region": private_state,
      "country": private_country,
      "countryCode": "",
      "primaryContact": "",
      "addressType": ""
    }
  ],
  "personToOrganizationRelationship":[],
  "supervisor": []
}
