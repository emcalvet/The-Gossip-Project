class Gossip < ApplicationRecord
    validates :title, presence: true, length: {minimum: 2, maximum: 14}
    validates :content, presence: true, length: {maximum: 300}
    validates :user_id, presence: true
    belongs_to :user
    has_many :comment
    has_many :links_tags
    has_many :tags, through: :links_tags
    has_many :likes
end
