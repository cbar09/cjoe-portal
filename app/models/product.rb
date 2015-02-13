class Product < ActiveRecord::Base
  
  def self.find_variant(sku)
    @products = ShopifyAPI::Product.all
    
    @products.each do |product|
      product.variants.each do |variant|
        if variant.sku == sku
          return variant
        end
      end
    end
    
    return nil
  end
  
end
