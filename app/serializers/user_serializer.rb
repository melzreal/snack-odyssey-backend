class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email

  has_many :posts, through: :blog

  attribute :posts do |user| {
   posts: user.posts.all
  }
 end

end
