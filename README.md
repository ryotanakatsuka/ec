# README

# アプリケーション名
Ec
## アプリケーション概要
本アプリケーションは主にお米のネットショッピングができるWEBサイトになっております。
## URL
https://ec-30432.herokuapp.com/
## テスト用アカウント
ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。
## 利用方法
ログインの有無にかかわらず、ユーザーは商品の詳細や他のリンク先において本サイトの概要などが閲覧できる仕様になっております。また、購入希望のユーザーは新規アカウント登録の後、クレジットカードを利用して購入する事ができるよう実装して参りました。
## 目指した課題解決
本アプリケーションは昨今の新型コロナウィルスの影響により、大変ご苦労なさっておられる生産者の方達や、近年問題視されている日本の「米離れ」という二つの問題を解消する目的で開発に臨みました。
## 洗い出した要件
| 優先順位 (高：3、中：2、低：1)| 機能   | 目的   | 詳細   | ストーリー  | 見積もり（所要時間）|
| -- | -- | -- | -- | -- | -- |
|3|DB設計|DB設計|エンティティをメモ用紙などに洗い出し、アソシエーションを組む|エンティティを洗い出した後、不要なカラムや逆に必要なカラムがないか確認する|エンティティを洗い出した後、不要なカラムや逆に必要なカラムがないか確認する|
|3|ER図を記述|VSコードにER図を記述する事で、READMEへ効率的に記述する事ができる|VSCodeの拡張機能「Draw.io Integration」を導入する|モデル同士のアソシエーションを表現する為に線で結ぶ|1時間|
|3|READMEへモデル及びアソシエーションを記述|各モデルを作成しテーブルを作成する際にREADMEを参考にする事で効率的に作業が進められる|必要なカラムや外部キーを記述する|github上で綺麗に表示されるよう点線などのズレがないか確認しながら記述する|1時間|
|3|トップページ|トップページがあることで、他のページへのアクセスが可能になる他、各機能を分けることで見やすさを表現できるため|トップページがあることで、他のページへのアクセスが可能になる他、各機能を分けることで見やすさを表現できるため|ユーザーはurlを入力するとトップページにアクセスできる|3時間|
|3|ユーザー新規登録機能|アカウントを持つユーザーのみが商品閲覧や購入ができるようにする為|deviseの導入|新規登録において必要な情報を入力する|3時間|
|3|ウィザード形式の導入|商品購入の際に都度ユーザーに住所を入力させるのは手間であると考えた為|ユーザー新規登録の際に、ウィザード形式で住所情報も入力|ユーザはアドレスやパスワードなどの必要情報を入力後に住所も登録する|3時間|
|3|管理ユーザー機能|商品の出品、編集、削除などの機能を特定のユーザー（管理者）のみに可能にする為|usersテーブルにadminの導入|管理者になるユーザーはコマンドにおいて管理ユーザの権利を付与できる。|3時間|
|3|商品表示機能|管理者は出品したい商品をテーブルに保存し、表示できるようにする|管理者ページにおいて出品ページへのリンク先を作成|リンク先にて商品の情報を入力し、保存と表示を行う|3時間|
|3|商品詳細表示機能|どのユーザーにおいても商品の詳細を閲覧できる|商品一覧ページからクリックすると詳細ページに遷移できる|詳細ページでは商品の価格や配送日などが閲覧できる|3時間|
|3|商品購入機能|ユーザーはクレジットカードで商品を購入できる|アカウントを持つユーザーのみに購入ができるようにする|詳細ページにおいて購入ボタンをクリックすると購入ページへ遷移でき、クレジット決済が可能になる|4時間|
|2|商品削除・編集機能|不適切な商品や変更が必要な初品がある場合は削除や編集を可能にするため|管理ユーザのみ削除と編集ができるように実装|管理ユーザのみ削除と編集ができるように実装|1時間|
|2|商品カート機能|複数の商品を購入可能にするため|カート機能を実装し複数の商品を一括で購入できる|各商品にカートを用意し、購入したい商品がある場合はカートに入れ、続けて他の商品も閲覧が可能になる|3時間|
|2|トピック欄の実装|このWEBサイト作成の経緯や目的、取り組みなどをユーザーに知ってもらう為|現代の日本の「米離れ」や生産者側の現状などをユーザーに知ってもらい、興味と理解を深めてもらう。|トップページ左のトピック欄のリンクから、商品や現代の米事情などの情報を得る事ができる。|3時間|
|2|S3の設定|Heroku上では画像ファイルが２４時間に一度、自動で削除されてしまう為AWSにおいて一定期間画像を保存できるようにする為|AWSアカウントを作成しS3の使用を可能にするgemを導入。その後、S3へ画像の保存先を変更する|アカウント作成後、保存先を「:amazon」に変更。本番環境からS3へ保存先を変更。正しく保存されているか確認する|2時間|



 users テーブル

|Colum                |Type         |Options                                 |
|---------------------|-------------|----------------------------------------|
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
- has_many cart_items

 
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

carts テーブル

|Colum                   |Type         |Options                                 |
|------------------------|-------------|----------------------------------------|
|id                      |integer      |null: false foreign_key: true           |  


 Association

- belongs_to cart_item

cart_items テーブル

|Colum                   |Type         |Options                                 |
|------------------------|-------------|----------------------------------------|
|cart                    |references   |null: false foreign_key: true           |  
|item                    |references   |null: false foreign_key: true           |  


 Association

- belongs_to cart
- belongs_to item