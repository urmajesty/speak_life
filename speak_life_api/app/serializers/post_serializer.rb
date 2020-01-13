class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :content, :user, :likes
  belongs_to :category
  has_many :keywords
end
