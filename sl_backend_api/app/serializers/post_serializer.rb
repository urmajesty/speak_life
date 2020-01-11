class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :content, :user, :likes
end
