# README

# テーブル設計

## users テーブル

| Column   | Type    | Options     |
| -------- | ------  | ----------- |
| nickname | string  | null: false | ニックネーム
| name     | string  | null: false | 名前
| kana     | string  | null: false | 名前(カナ)
| email    | text    | null: false | e-mail
| password | text    | null: false | パスワード
| year     | date    | null: false | 生年月日(年) Active_hase
| month    | date    | null: false | 生年月日(月) Active_hase
| day      | date    | null: false | 生年月日(日) Active_hase



### Association
- has_many :items
- has_many :messages


## items テーブル

| Column          | Type    | Options     |
| ----------------| --------| ----------- |
| name            | string  | null: false | 商品名
| product_image   | string  | null: false | 商品画像
| description     | text    | null: false | 商品の説明
| category        | string  | null: false | カテゴリー Active_hash
| condition       | string  | null: false | 商品の状態 Active_hash
| fee             | integer | null: false | 配送料 Active_hash
| sending_area    | string  | null: false | 発送元の地域 Active_hash
| delivery_time   | integer | null: false | 発送までの日数 Active_hash
| price           | integer | null: false | 価格

### Association
- belongs_to :users
- has_many :messages
- has_one :purchases

## purchases テーブル

| Column        | Type       | Options                        |
| --------------| ---------- | ------------------------------ |
| purchaser     | text       | null: false, foreign_key: true | 購入者
| exhibitor     | text       | null: false, foreign_key: true | 出品者
| zip_code      | integer    | null: false                    | 郵便番号
| prefecture    | string     | null: false                    | 都道府 Active_hash
| city          | references | null: false                    | 市町村
| house_number  | references | null: false                    | 番地
| building_name | references |                                | 建物名
| phone_number  | references | null: false                    | 電話番号

### Association
belongs_to :items

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | foreign_key: true              | 商品ID
| user    | references | foreign_key: true              | ユーザーID
| room    | references | null: false, foreign_key: true | コメント

### Association
belongs_to :users
belongs_to :items