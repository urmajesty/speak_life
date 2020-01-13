class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category_id, :content, :user_id, :likes
  belongs_to :category
  has_many :affirmations
end
