<!-- ChatSpace DB設計 -->
<!-- usersテーブル -->
|colimn|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false| 
<!-- association -->
- has_many :messages
- has_many :groups, through: :users_groups
- has_many :users_groups

<!-- users_groupsテーブル -->
|colimn|Type|Options|
|------|----|-------|
|user_id|reference|null:false, foreign_key: true|
|group_id|reference|null: false, foreign_key: true|
<!-- association -->
- belongs_to :user
- belongs_to :group

<!-- groupsテーブル -->
|colimn|Type|Options|
|------|----|-------|
|name|string|null: false|
<!-- association -->
- has_many :messages
- has_many :users, through: :users_groups
- has_many :users_groups

<!-- messagesテーブル -->
|colimn|Type|Options|
|------|----|-------|
|text|text|
|picture|text|
|user_id|reference|null:false, foreign_key: true|
|group_id|reference|null: false, foreign_key: true|
<!-- association -->
- belongs_to :user
- belongs_to :group

