class PostsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body
  belongs_to :blog


end


