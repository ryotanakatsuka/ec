# README

 users テーブル

|Colum                |Type         |Options                                 |
|---------------------|-------------|----------------------------------------|
|nickname             |string       |null:false                              |
|email                |string       |null:false, default:""                  |
|encrypted_password   |string       |null:false, default: ""                 |
|birth_day            |date         |null:false                              |
|first_name           |string       |null:false                              |
|last_name            |string       |null:false                              |
|first_name_kana      |string       |null:false                              |
|last_name_kana       |string       |null:false                              |

     Association
-  has_many :items
-  has_many :orders
-  has_one  :addresses


  items テーブル

|Colum                   |Type         |Options                                 |
|------------------------|-------------|----------------------------------------|
|name                    |string       |null:false                              |
|manufacturer            |string       |null:false                              |
|internal_capacity       |string       |null:false                              |
|price                   |integer      |null:false                              |
|user                    |references   |null: false foreign_key: true           |

   Association
- belongs_to user
- has_one order

 
  orders テーブル

|Colum                   |Type         |Options                                 |
|------------------------|-------------|----------------------------------------|
|user                    |references   |null: false foreign_key: true           |  
|item                    |references   |null: false foreign_key: true           |

 Association

- belongs_to user
- belongs_to item

  addresses テーブル

|Colum                   |Type         |Options                                 |
|------------------------|-------------|----------------------------------------|
|prefecture_id           |integer      |null:false                              |
|postal_code             |string       |null:false                              |
|city                    |string       |null:false                              |
|addresses               |string       |null:false                              |
|building                |string       |                                        |
|phone_number            |string       |null:false                              |
|user                    |references   |null: false foreign_key: true           |  

  Association

- belongs_to user
