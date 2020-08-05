# README

# テーブル設計

## users テーブル

| Column   | Type    | Options     |
| -------- | ------  | ----------- |
| name     | string  | null: false | 名前
| name     | string  | null: false | 名前(カナ)
| email    | text    | null: false | e-mail
| password | date    | null: false | パスワード
| dob      | date    | null: false | 生年月日

## items テーブル

| Column          | Type    | Options     |
| ----------------| --------| ----------- |
| name            | string  | null: false | 商品名
| product_image   | string  | null: false | 商品画像
| description     | text    | null: false | 商品の説明
| category        | string  | null: false | カテゴリー
| condition       | string  | null: false | 商品の状態
| fee             | integer | null: false | 配送料
| sending_area    | string  | null: false | 発送元の地域
| delivery_time   | integer | null: false | 発送までの日数
| price           | integer | null: false | 価格

## purchases テーブル

| Column        | Type       | Options                        |
| --------------| ---------- | ------------------------------ |
| purchaser     | references | null: false, foreign_key: true | 購入者
| exhibitor     | references | null: false, foreign_key: true | 出品者
| zip_code      | integer    | null: false                    | 郵便番号
| prefecture    | string     | null: false                    | 都道府県
| city          | references | null: false                    | 市町村
| house_number  | references | null: false                    | 番地
| building_name | references |                                | 建物名
| phone_number  | references | null: false                    | 電話番号

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | foreign_key: true              | 商品ID
| user    | references | foreign_key: true              | ユーザーID
| room    | references | null: false, foreign_key: true | コメント