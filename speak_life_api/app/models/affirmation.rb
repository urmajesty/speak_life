class Affirmation < ApplicationRecord
    has_many :post_affirmations
    has_many :posts, through: :post_affirmations

    validates :affirmation_keyword, presence: true
    validates :affirmation_keyword, uniqueness: true
    validates :affirmation_keyword, length: { maximum: 25 }
    validates :affirmation_keyword, format: { without: /[\s\W]+/, message: "no spaces or special characters allowed" }
end
