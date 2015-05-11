module ProductList
  extend ActiveSupport::Concern

  included do 
    before_filter :load_products
  end

  def load_products
    @products = Product.all
  end

end