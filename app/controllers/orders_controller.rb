class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @orders = Order.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end
  
  def 

  def new
  end
  
  def new_from_invoice
    @params = params
    @order = Order.new
    
    puts "hellooooo"
    
    
    respond_to do |format|
      format.html # new_from_invoice.html.erb
      format.xml  { render xml:   @order }
      format.json { render json:  @order }
    end
  end

  def create
  end

  def update
  end

  def delete
  end
end
