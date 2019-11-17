class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email
  has_one :blog
  has_many :posts, through: :blog

  attribute :blog do |user| {
   posts: user.posts.all
  }
 end

end
