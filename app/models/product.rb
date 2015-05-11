class Product < ActiveRecord::Base
  include ProductValidate
  has_many :comments, as: :commentable #this is simple a name like as alias
end
