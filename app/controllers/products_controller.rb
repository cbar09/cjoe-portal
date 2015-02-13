class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @variants = ShopifyAPI::Variant.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @variants }
    end
  end
end
