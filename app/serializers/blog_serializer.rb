class BlogsSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  attributes :name



end


