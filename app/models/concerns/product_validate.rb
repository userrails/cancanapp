module ProductValidate
  extend ActiveSupport::Concern

  #Common content in two or more thatn two models will come here.
  included do 
    validates :name, presence: true, uniqueness: true    
  end

  #also we need to do following things here

  #has_many

  #after_create
  #before_create
end