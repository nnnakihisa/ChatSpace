# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|text|null: false,foreign_key: true|
|email|text|null: false,foreign_key: true|
|password|string|null: false,foreign_key: true|
|------|timestamps|-------|

### Association
-   has_many :groups, through: :user_groups
-   has_many :messages


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|---------|
|image|string|---------|
|user_id|integer|null: false,foreign_key: true|
|group_id|integer|null: false,foreign_key: true|
|------|timestamps|null: false,foreign_key: true|


### Association
- belongs_to :user
- belongs_to :group


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|groupname|text|null: false,foreign_key: true|
|member|text|null: false,foreign_key: true|
|------|timestamps|-------|

### Association
-  has_many :users, through: :user_groups
-  has_many :messages


## user_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group_id|integer|null: false,foreign_key: true|
|user_id|integer|null: false,foreign_key: true|
|------|timestamps|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group
