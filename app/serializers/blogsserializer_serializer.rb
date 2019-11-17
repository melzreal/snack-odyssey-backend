class BlogsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :posts, serializer: PostsSerializer
  belongs_to :user, serializer: UserSerializer
end
