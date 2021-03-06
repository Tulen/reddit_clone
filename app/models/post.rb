class Post < ApplicationRecord
  validates :author, :title, presence: true

  has_many :comments

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

  has_many :post_subs,
    primary_key: :id,
    foreign_key: :post_id,
    class_name: :PostSub

  has_many :subs,
    through: :post_subs,
    source: :sub
end
