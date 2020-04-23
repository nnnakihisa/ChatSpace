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
|name|text|---------|
|user_id|integer|null: false,foreign_key: true|
|group_id|integer|null: false,foreign_key: true|

### Association
-   has_many :groups, through: :user_groups


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|---------|
|image|string|---------|
|user_id|integer|null: false,foreign_key: true|
|group_id|integer|null: false,foreign_key: true|

### Association
- |----------|


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|------|----|-------|

### Association
-  has_many :users, through: :user_groups


## user_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false,foreign_key: true|
|group_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group