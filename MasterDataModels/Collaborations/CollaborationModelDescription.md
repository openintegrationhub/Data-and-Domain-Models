<!-- TOC depthFrom:2 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->
- [CalendarEvent](#calendarevent)
- [Contacts](#contact)
- [Calendars](#calendar)
- [Threads](#thread)
- [CollaborationElement](#collaborationelement)
- [Attachments](#attachment)
- [Task](#task)
- [Category](#category)
- [TaskToTaskRelation](#tasktotaskrelation)

<!-- /TOC -->

# Objects

## CalendarEvent
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|[collaborationElement](#collaborationelement)|Array (of collaborationElement objects)|-|Collaboration properties values|A collaborationElement object array|-|
|[contacts](#contacts)|Array (of contact objects)|-|Contact information of the person|A contact object array|-|
|[calendars](#calendars)|Array (of calendar objects)|-|Calendar connected to contacts|A contact object array|-|
|location|String|-|Name of the location|"Room 123"|-|
|start|Date|-|startdate of the event|01.01.2018|-|
|end|Date|-|enddate of the event|31.12.2018|-|

## Contact
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|name|String|-|Name of the contact|"John Doe"|-|
|eMail|String|-|E-mail of the contact|"john.doe@email.com"|-|
|[calendars](#calendar)|Array (of calendar objects)|-|Calendar information of the person|A calendar object array|-|

## Calendar
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|calendar|String|-|URI to the person's calendar|http://cal.example.com/calA|-|
|requestCalendar|String|-|URL to request an appointment with the person|janedoe@example.com|-|
|status|String|-|URL which describes if the person is available or busy|http://www.example.com/busy/janedoe|-|

## Email
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|[collaborationElements](#collaborationElement)|Array (of collaboration objects)|-|Collaboration properties values|A collaborationElement object array|-|
|[threads](#thread)|Array (of thread objects)|-|thread information of the e-mail|A thread object array|-|

## Thread
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|threadName|String|-|Name of the Thread|"Subject of the E-Mail"|-|
|topic|String|-|Identification of the thread|randomized string|-|

## CollaborationElement
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|from|String|-|E-Mail of sender|"john.doe@email.com"|-|
|to|String|-|E-mail of receiver|"jane.doe@email.com"|-|
|cc|String|-|E-mail of the contact in copy|"janet.doe@email.com"|-|
|bcc|String|-|E-mail of the contact in blind copy|"jonathan.doe@email.com"|-|
|subject|String|-|Subject line of the e-mail|"RE: Your Question"|-|
|date|Date|-|Date|01.01.2018|-|
|day|String|Enum|Day of the week|"Monday"|"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"|
|time|Time|-|Timestamp|10:10:10|-|
|messageID|String|-|Id of the message|some token|-|
|language|String|-|Language of the e-mail content|"en"|-|
|authentification|String|-|Authentification Result|"spf=pass smtp.mailfrom=email.com"|-|
|MIMEVersion|Decimal|-|Version of MIME|1.3|-|
|format|String|-|Format of the email content|"HTML"|-|
|content|String|-|Content of the e-mail|"Dear John, please find attached"|-|
|[attachments](#attachment)|Array (of attachment objects)|-|attachment information of the element|An attachment object array|-|

## Attachment
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|type|String|-|Datatype of the attachment|"JPG"|-|
|size|String|-|Datasize of the e-mail attachment|"54 KB"|-|

## Task
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|[collaborationElement](#collaborationelement)|Array (of collaborationElement objects)|-|Collaboration properties values|A collaborationElement object array|-|
|[category](#category)|Array (of category objects)|-|category information of the task|A category object array|-|
|[taskToTaskRelation](#tasktotaskrelation)|String|-|Relation between two tasks|"is subtask to"|-|
|subject|String|-|Subject of the Task|"Create a datamodel"|-|
|startDate|Datetime|-|Date when the task starts|01.01.2018 00:00|-|
|endDate|Datetime|-|Date when the task is closed|31.01.2018 00:00|-|
|reminderDate|Datetime|-|Date when the task completion should be reminded|20.01.2018 00:00|-|
|content|String|-|description of the Task|"To create a datamodel we have to analyze different systems..."|-|
|status|String|Enum|status of the Task|"completed"|"started", "in progress", "completed"|
|urgency|String|-|urgency of the Task|"low"|"low", "normal", "high"|

## Category
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|category|String|-|category of the task or subtask|"Implementation"|-|

## TaskToTaskRelation
|Attribute|Type|Properties|Description|Example|Possible Enumeration Options|
|---|---|---|---|---|---|
|label|String|-|relation between two tasks|"is blocked by"|"subtask", "blocks", "is blocked by"|
|[tasks](#task)|Array of task objects|-|Array (of task objects)|-|-|-|-|
|targetUiid|String|-|ID from the targeted task|-|-|
|sourceUiid|String|-|ID from the source task|-|-|
