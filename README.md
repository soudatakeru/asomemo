# テーブル設計

   usersテーブル

| Column            | Type   | Options                        |
| nickname          | string | null: false                    |
| email             | string | null:false, uniqueness: true   |
|encrypted_password |string  | null: false                    |

    Association

- has_many :events
- has_many :favorites
- has_many :comments

   eventsテーブル

| Column            | Type       | Options                        |
| name              | string     | null: false                    |
| explanation       | text       | null: false                    |
| facility_id       | integer    | null: false                    |
| scale_id          | integer    | null: false                    |
| category_id       | integer    | null: false                    |
| volunteer         | text       |                                |
| user              | references | null: false: foreign_key: true |

    Association

- belongs_to :user
- has_many   :favorite
- has_many   :event_tag_relations
- has_many   :comments

   commentsテーブル

| Column            | Type       | Options                        |
| comment           | text       | null: false                    |
| user_id           | references | null: false: foreign_key: true |
| event_id          | references | null: false: foreign_key: true |

    Association

- belongs_to :user
- belongs_to :event

   favoriteテーブル
    
| Column            | Type       | Options                        |
| user_id           | references | null: false: foreign_key: true |
| event_id          | references | null: false: foreign_key: true |

    Association

- belongs_to :user
- belongs_to :event

   event_tag_relationsテーブル

| Column            | Type       | Options                        |
| event_id          | references | null: false: foreign_key: true |
| tag_id            | references | null: false: foreign_key: true |

    Association

- belongs_to :event
- belongs_to :tag

   tagテーブル

| Column            | Type       | Options                        |
| name              | string     | null:false, uniqueness: true   |

    Association

- has_many :event_tag_relations


