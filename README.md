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
|name|string|null: false, index: true|
|email|text|null: false|
|password|string|null: false|
|------|timestamps|null: false|

### Association
-   has_many :user_groups
-   has_many :groups, through: :user_groups
-   has_many :messages


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|---------|
|image|string|---------|
|user|references|null: false,foreign_key: true|
|group|references|null: false,foreign_key: true|
|------|timestamps|null: false|

### Association
- belongs_to :user
- belongs_to :group


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|------|timestamps|null: false|

### Association
-  has_many :user_groups
-  has_many :users, through: :user_groups
-  has_many :messages


## user_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group|references|null: false,foreign_key: true|
|user|references|null: false,foreign_key: true|
|------|timestamps|null: false|

### Association
- belongs_to :user
- belongs_to :group
