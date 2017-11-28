
# BusinessEntity
A ```BusinessEntity``` describes an entity while the entity type IDs assigned by source models

## Entity type ```Person```
Each instance of a person (object) has a unique ```id```. A person can inherit from ```.Address``` and ```.Contact```.

> Since a business process

| ```Person``` ```Organization``` |
| :--- |
| A ```Person``` can relate to **zero / multiple** ```organizations``` |
| An ```Organization``` can relate to **one / multiple** ```persons``` - member |

> ...

A ```person``` can inherit **zero / multiple** ```contacts```.
A ```contact``` (object) is assigned to **one / multiple** ```persons```.

> ...

A ```contact``` (object) is assigned to **one / multiple** ```persons```.
___

## Entity type ```Organization```
Each instance of an organization (object) has a unique ```id```.

An ```organization``` have **one or many** ```persons``` - employees. A ```person``` can own **zero or multiple** ```organizations```.
___
