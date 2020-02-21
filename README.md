<!-- ChatSpace DB設計 -->
<!-- usersテーブル -->
|colimn|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false| 
<!-- association -->
- belongs_to :chat
- has_many :users_id
- has_many :groups, through: :users_id

<!-- users_idテーブル -->
|colimn|Type|Options|
|------|----|-------|
|user_id|interger|null:false, foreign_key: true|
|group_id|interger|null: false, foreign_key: true|
<!-- association -->
- belongs_to :users
- belongs_to :groups

<!-- groupsテーブル -->
|colimn|Type|Options|
|------|----|-------|
|name|string|null: false|
<!-- association -->
- belongs_to :chat
- has_many :users, through: :users_id

<!-- chatテーブル -->
|colimn|Type|Options|
|------|----|-------|
|text|text|null: false|
|picture|picture|null: false|
<!-- association -->
- has_many :users
- has_many :groups

