class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email

  attribute :posts do |user| {
   posts: user.posts.all
  }
 end

end
