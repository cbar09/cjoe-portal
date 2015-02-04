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
  
  def show
    
  end
  
  def new_from_invoice
    @params = params
    @order = Order.new
    #@invoice_id = 
    
    @fb = FreshBooks::Client.new(ENV['FRESHBOOKS_CLIENT_URL'], ENV['FRESHBOOKS_TOKEN'])
    @invoice = @fb.invoice.get(invoice_id: params[:object_id])
  
    puts "#{@invoice.inspect}"
    
    @order.new(invoice_id: params[:object_id], invoice_hash: @invoice.to_json)
    if @order.save
      redirect_to :root
    else
      respond_to do |format|
        format.html # new_from_invoice.html.erb
        format.xml  { render xml:   @invoice }
        format.json { render json:  @invoice }
      end
    end
  end

  def create
  end

  def update
  end

  def delete
  end
end
