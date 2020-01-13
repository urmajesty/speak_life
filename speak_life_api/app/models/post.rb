class Post < ApplicationRecord
        belongs_to :category
        has_many :post_affirmations
        has_many :affirmations, through: :post_affirmations
        belongs_to :user
        
    
        validates :content, presence: true
        validates :likes, presence: true
    
        accepts_nested_attributes_for :affirmations
    
        # Removed user_id column from ActiveRecord cache before dropping the Users table
        def self.columns
            super.reject { |column| column.name == "user_id" }
        end
        )
                    
        affirmation_array.each do |affirmation_hash|
                affirmation_hash.values.each do |keyword|
                    affirmation = Affirmation.find_or_create_by(affirmation_keyword: tag)
                    self.affirmations << affirmation
                end
            end
        end
    end
end
